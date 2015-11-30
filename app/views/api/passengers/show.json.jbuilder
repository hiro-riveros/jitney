json.extract! @passenger, :id, :automatic_map
json.positions @passenger.positions.last
json.user_id @passenger.user.id 
json.email @passenger.user.email
json.name @passenger.user.name
json.last_name @passenger.user.last_name
json.password @passenger.user.password 
json.actable_type @passenger.user.actable_type 
json.authentication_token @passenger.user.authentication_token
json.is_active @passenger.user.is_active

