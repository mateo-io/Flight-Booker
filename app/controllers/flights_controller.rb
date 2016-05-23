class FlightsController < ApplicationController
  include FlightsHelper
  def new
  end

  def index
    @airports=Airport.all.map{|a| [a.code, a.id]}
    @dates=get_dates
    @query=params[:query]
    if @query
      @flights=Flight.where(from_airport_id: params[:from], 
                        to_airport_id: params[:to],
                        start: Date.strptime(params[:date],'%d%m%Y').to_datetime)
    end
  end
end
