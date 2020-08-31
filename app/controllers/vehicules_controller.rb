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
  end

end
