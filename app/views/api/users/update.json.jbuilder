json.extract! @user, :id, :email, :name, :last_name, :password, :actable_type, :authentication_token
json.specific_id @user.specific.id