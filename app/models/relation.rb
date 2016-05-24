class Relation < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :booking
end
