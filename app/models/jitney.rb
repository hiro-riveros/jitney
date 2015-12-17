class Jitney < ActiveRecord::Base

	## ACT AS USER
  acts_as :user

  ## RELATIONS
  belongs_to :position
  has_many :cars
  
end
