require 'date'
class BookingsController < ApplicationController

  def new
    @vehicule = Vehicule.find(params[:vehicule_id])
    @booking = Booking.new
    authorize @booking
  end

  def create

    @booking = Booking.new(strong_params)
    @vehicule = Vehicule.find(params[:vehicule_id])
    @booking.user_id = current_user.id
    @booking.vehicule_id = @vehicule.id
    authorize @booking
    # IF END DATE BIGGER THAN START DATE => RAISE AN ERROR
    # Need to transform string into date format
    if @booking.start_date < @booking.end_time
      redirect_to new_vehicule_booking_path(@vehicule), notice: 'Starting date can´t be bigger than ending date'
    end
  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_time)
  end
end
