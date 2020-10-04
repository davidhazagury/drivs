class BookingsController < ApplicationController

def new
  @vehicule = Vehicule.find(params[:vehicule_id])
  authorize @booking

end
end
