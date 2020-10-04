class DropTableRequestedBookings < ActiveRecord::Migration[6.0]
  def change
    drop_table :requested_bookings
  end
end
