class Passenger < ActiveRecord::Base

  ## ACT AS USER
  acts_as :user

  ## RELATIONS
  belongs_to :position
end
