module ApplicationHelper
<<<<<<< HEAD
=======

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
   @devise_mapping ||= Devise.mappings[:user]
  end
>>>>>>> 9b1ac28d45f373cc8971e0806012023c29aff724
end
