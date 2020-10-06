class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:booking][:flight])
    @pass_num = params[:booking][:passengers].to_i
    @booking = Booking.new
    @pass_num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      @booking = Booking.new
      @pass_num.times { @booking.passengers.build }
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes:
                                    [:id, :name, :email])
  end
end
