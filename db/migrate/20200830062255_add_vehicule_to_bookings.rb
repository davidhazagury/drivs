class AddVehiculeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :vehicule
  end
end
