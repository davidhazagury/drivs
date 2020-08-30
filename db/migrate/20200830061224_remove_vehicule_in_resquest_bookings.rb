class RemoveVehiculeInResquestBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :requested_bookings, :vehicule_id
  end
end
