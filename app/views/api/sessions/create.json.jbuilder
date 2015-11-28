json.extract! @user, :id, :email, :name, :last_name, :slast_name, :age, :account_type, :password, :authentication_token
binding.pry
json.passenger @user.specific.passenger_id