## TO-DO extract jitney as user!
json.array!(@jitneys) do |jitney|
	json.extract! jitney, :id, :route, :automatic_map
	json.positions jitney.positions.last
	json.cars jitney.cars
	json.user jitney.user
end