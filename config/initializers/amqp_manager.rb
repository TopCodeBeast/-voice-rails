require_dependency './app/models/amqp_manager'

if defined?(Spring)
  Spring.after_fork do
    AmqpManager.start
  end
else
  AmqpManager.start
end