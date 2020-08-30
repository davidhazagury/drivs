class RemoveBookingFromVehicule < ActiveRecord::Migration[6.0]
  def change
    remove_column :vehicules, :booking_id
  end
end
