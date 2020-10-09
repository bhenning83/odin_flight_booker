class PassengerMailer < ApplicationMailer
  def welcome_email
    @passenger = params[:passenger]
    @booking = params[:booking]
    @url = "http://example.com/flights/#{@booking.id}"
    mail(to: @passenger.email, subject: "Get packing. You're booked!")
  end
end
