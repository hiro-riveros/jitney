json.array!(@passengers) do |passenger|
	json.extract! passenger, :id, :frequent_destiny, :automatic_map
	json.user_id passenger.positions 
end