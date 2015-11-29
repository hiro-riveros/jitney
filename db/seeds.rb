# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jitney.create!(
  email: 'jitney@user.com',
  password: '12345678',
  password_confirmation: '12345678',
  name: 'jitney',
  last_name: 'jitney test',
  route: 'plaza maipu, las rejas',
  automatic_map: true
)

Jitney.create!(
  email: 'second-jitney@user.com',
  password: '12345678',
  password_confirmation: '12345678',
  name: 'jitney',
  last_name: 'jitney test',
  route: 'plaza maipu, las rejas',
  automatic_map: true
)

Passenger.create!(
  email: 'passenger@user.com',
  password: '12345678',
  password_confirmation: '12345678',
  name: 'passenger',
  last_name: 'passenger test',
  frequent_destiny: 'las rejas',
  automatic_map: true
)

Passenger.create!(
  email: 'second-passenger@user.com',
  password: '12345678',
  password_confirmation: '12345678',
  name: 'passenger',
  last_name: 'passenger test',
  frequent_destiny: 'las rejas',
  automatic_map: true
)

Car.create!( jitney_id: 1, patent: 'sa9068', model: 'corsa', route: 'pajarito, las rejas')

Position.create!(latitude: -33.4620582, longitude: -70.7011462, perimeter: 0, user_id: 1)

Position.create!(latitude: -33.4620582, longitude: -70.7011462, perimeter: 0, user_id: 2)
Position.create!(latitude: -33.4620580, longitude: -70.7011458, perimeter: 0, user_id: 2)

Position.create!(latitude: -33.460829, longitude: -70.702707, perimeter: 0, user_id: 3)

Position.create!(latitude: -33.461694, longitude: -70.702707, perimeter: 0, user_id: 4) 
Position.create!(latitude: -33.456762, longitude: -70.703834, perimeter: 0, user_id: 4)
 
