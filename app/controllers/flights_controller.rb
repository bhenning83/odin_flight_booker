class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @city_options = Airport.all.map{ |a| [a.city, a.id] }
    @date_options = Flight.all.map{ |a| [a.date.strftime('%m/%d/%y'), a.date] }
  end

end
