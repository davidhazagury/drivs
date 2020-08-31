class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @latest_vehicules = Vehicule.order(created_at: :desc).limit(4)
  end
end
