class Relationship < ActiveRecord::Base
  belongs_to :airport
  belongs_to :flight
end
