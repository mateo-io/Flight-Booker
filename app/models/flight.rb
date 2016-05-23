class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"


  def flight_date_formatted
    start.strftime("%d/%m/%Y")
  end
end
