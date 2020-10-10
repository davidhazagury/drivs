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

   #CAN NOT ALLOW THE USER TO BOOK A CAR IF THE ENDING DATE IS BEFORE THE STARTING DATE

    if @booking.end_time < @booking.start_date
      redirect_to vehicule_path(@vehicule)
      flash.now[:notice] = 'Sorry, starting date needs to be before the ending date'

    else

      if @booking.save
        redirect_to dashboard_index_path
        flash.now[:notice] = "#{current_user.first_name}, you have successfully booked #{@vehicule.brand}!"
      else
        flash[:alert] = @booking.errors.full_messages.first
        redirect_to vehicule_path(@vehicule)
      end

    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    raise

  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_time)
  end
end
