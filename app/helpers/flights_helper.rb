module FlightsHelper

  def get_dates
    dates=[]
    Flight.all.map do |a|
          unless dates.any? && dates.last[0]==a.flight_date_formatted
            dates<<[a.flight_date_formatted, a.flight_date_formatted.gsub(/\//,"")]
          end
    end
    dates
  end
end
