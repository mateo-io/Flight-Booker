class FlightsController < ApplicationController
  include FlightsHelper
  def new
  end

  def index
    @airports=Airport.all.map{|a| [a.code, a.id]}
    @dates=Flight.get_dates
    @passengers=params[:passengers]
    @query=params[:query]

    if @query
      date=params[:date].to_date
      @flights=Flight.where(from_airport_id: params[:from], 
                        to_airport_id: params[:to],
                 start: date.beginning_of_day..date.end_of_day)
    end
  end
end
