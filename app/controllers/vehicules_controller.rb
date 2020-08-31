class VehiculesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @vehicule = Vehicule.new
    authorize @vehicule
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    authorize @vehicule
    @vehicule.user_id = current_user.id
    if @vehicule.save!
      redirect_to root
    else
      render :new
    end
  end

  private
  def vehicule_params
    params.require(:vehicule).permit(:brand, :location, :features, :photo, :capacity, :price, :vehicule_category)
  end
end
