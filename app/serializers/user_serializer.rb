class UserSerializer < ActiveModel::Serializer

  attributes :id, :email, :full_name, :roles, :skills, :languages,
             :availability, :activity, :visibility, :name, :crmuser_id


  def roles
    object.role_summary
  end
end
