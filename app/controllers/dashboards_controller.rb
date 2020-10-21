class DashboardsController < ApplicationController

  def show
    @user_bookings = Booking.where(user: current_user)
  end
end
