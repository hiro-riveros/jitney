json.extract! @user, :id, :email, :name, :last_name, :password, :actable_type, :authentication_token
json.user_id @user.acting_as.id
