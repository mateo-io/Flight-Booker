class BookingsController < ApplicationController
  def new
    @passengers=params[:passengers].to_i
    @flight=Flight.find_by_id(params[:id])
    @from=Airport.find_by_id(@flight.from_airport_id).code
    @to=Airport.find_by_id(@flight.to_airport_id).code
    @booking=Booking.new(passengers_number: @passengers,
                         flight_id: @flight.id)
    @booking.passengers.build
  end

  def create
    @booking=Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
     render 'bookings/new' 
    end
  end

  def show
    @booking=Booking.find_by_id(params[:id])
    @flight=Flight.find_by_id(@booking.flight_id)
    @from=Airport.find_by_id(@flight.from_airport_id).code
    @to=Airport.find_by_id(@flight.to_airport_id).code
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passengers_number,
                                    passengers_attributes: [:name,:email])
  end
end
