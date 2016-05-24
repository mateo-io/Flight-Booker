class Passenger < ActiveRecord::Base
  has_many :bookings, through: :relations, inverse_of: :passengers
  has_many :relations
end
