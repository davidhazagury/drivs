class RequestedBookingsController < ApplicationController

  def new
    authorize @requested_booking
  end

end
