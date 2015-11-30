class Transaction < ActiveRecord::Base
	#Relations

	belongs_to :users
end
