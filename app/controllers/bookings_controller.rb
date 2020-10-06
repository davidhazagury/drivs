class BookingsController < ApplicationController

  def new
    @vehicule = Vehicule.find(params[:vehicule_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    raise
    authorize @booking
  end
end
