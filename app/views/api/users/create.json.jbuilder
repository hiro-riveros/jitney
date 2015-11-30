json.extract! @user, :id, :email, :name, :last_name, :password, :actable_type, :authentication_token, :is_active
json.user_id @user.acting_as.id
