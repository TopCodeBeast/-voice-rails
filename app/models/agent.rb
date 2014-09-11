class Agent

  attr_accessor :id, :name, :languages, :skills, :activity, :visibility, :call_id,
                :locked, :availability, :idle_since, :mutex, :unlock_scheduled


  def handle_update
    if user = User.where(name: name).first
      user.send_update_notification_to_clients
    end
  end
end
