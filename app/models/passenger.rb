class Passenger < ActiveRecord::Base
  has_many :bookings, through: :relations
  has_many :relations
end
