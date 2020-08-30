class AddReferenceToRequestedBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :requested_bookings, :booking
  end
end
