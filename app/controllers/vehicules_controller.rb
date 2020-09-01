class VehiculesController < ApplicationController
  def index
    @vehicules = policy_scope(Vehicule).all
  end

  def show
    @vehicule = Vehicule.find(params[:id])
    @features = @vehicule.features
    @display_features = @features.split(", ")
    authorize @vehicule

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
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def vehicule_params
    params.require(:vehicule).permit(:brand, :location, :features, :photo, :capacity, :price, :vehicule_category)
  end
end
