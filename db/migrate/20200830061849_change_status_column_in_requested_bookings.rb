class ChangeStatusColumnInRequestedBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :requested_bookings, :status, :string, default: 'pending'
  end
end
