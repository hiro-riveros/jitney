## TO-DO extract passenger as user!
json.array!(@passengers) do |passenger|
	json.extract! passenger, :id, :automatic_map
	json.positions passenger.positions.last
	json.users passenger.user
end