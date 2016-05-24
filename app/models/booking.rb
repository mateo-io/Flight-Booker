class Booking < ActiveRecord::Base
  belongs_to :flight
  has_many :passengers, through: :relations, inverse_of: :bookings
  has_many :relations

  accepts_nested_attributes_for :passengers
end
