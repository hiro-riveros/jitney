class Position < ActiveRecord::Base
	has_many :passengers
	has_many :jitneys

end
