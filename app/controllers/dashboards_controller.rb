class DashboardsController < ApplicationController

  def show
    @user_bookings = Booking.where(user: current_user)
    @user_instruments = Instrument.where(user: current_user)
  end
end
