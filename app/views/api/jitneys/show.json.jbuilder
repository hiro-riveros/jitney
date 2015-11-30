## TO-DO extract jitney as user!

json.extract! @jitney, :id, :automatic_map
json.cars @jitney.cars
json.positions @jitney.positions.last
json.user_id @jitney.user.id 
json.email @jitney.user.email
json.name @jitney.user.name
json.last_name @jitney.user.last_name
json.password @jitney.user.password 
json.actable_type @jitney.user.actable_type 
json.authentication_token @jitney.user.authentication_token
