json.array!(@jitneys) do |jitney|
	json.extract! jitney, :id, :route, :automatic_map
	json.user_id jitney.positions 
end