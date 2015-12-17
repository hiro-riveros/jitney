json.extract! @user, :id, :email, :name, :last_name, :password, :authentication_token, :actable_type
json.specific_id @user.specific.id