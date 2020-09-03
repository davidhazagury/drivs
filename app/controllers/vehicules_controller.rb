class VehiculesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def index

    #Basic search
    if params[:query].present?
      @vehicules = policy_scope(Vehicule).search_by_brand_and_location(params[:query])
    else
      @vehicules = policy_scope(Vehicule).all
    end

    # MAPBOX-GEOCODING
    @markers = @vehicules.geocoded.map do |vehicule|
      {
        lat: vehicule.latitude,
        lng: vehicule.longitude
      }
    end
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
