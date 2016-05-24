class BookingsController < ApplicationController
  def new
    @passengers=params[:passengers]
    @flight=Flight.find_by_id(params[:id])
    @from=Airport.find_by_id(@flight.from_airport_id).code
    @to=Airport.find_by_id(@flight.to_airport_id).code
    @booking=Booking.new(passengers_number: @passengers,
                         flight_id: @flight.id)
  end

  def create
  end
end
