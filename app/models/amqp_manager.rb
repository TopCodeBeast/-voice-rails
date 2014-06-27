require 'rails/mongoid'
require_dependency './app/models/ami_event.rb'

module AmqpManager
  class << self

    def channel
      Thread.current[:channel] ||= @connection.create_channel
    end

    def xchange
      Thread.current[:xchange] ||= channel.topic('voice.ahn', auto_delete: false)
    end

    def queue
      Thread.current[:queue] ||= channel.queue('voice.ahn', auto_delete: false)
    end

    def ahn_publish(*args)
      xchange.publish(*args)
    end

    def shutdown
      @connection.close
    end

    def establish_connection
      @connection = Bunny.new(
        host:     WimConfig['rabbit_host'],
        user:     WimConfig['rabbit_user'],
        password: WimConfig['rabbit_pass']
      ).tap { |c| c.start }
    end

    def start
      establish_connection

      queue.bind(xchange, routing_key: 'voice.ahn')
      queue.subscribe do |delivery_info, metadata, payload|
        AmiEvent.log(payload)
      end
    end
  end
end
