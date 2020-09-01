class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @latest_vehicules = Vehicule.order(created_at: :desc).limit(4)
    if current_user
      redirect_to vehicules_path
    end
  end

end
