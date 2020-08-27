class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :date
      t.date :end_time
      t.string :documentation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
