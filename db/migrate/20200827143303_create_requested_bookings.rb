class CreateRequestedBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :requested_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vehicule, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
