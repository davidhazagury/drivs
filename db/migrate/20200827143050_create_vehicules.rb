class CreateVehicules < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicules do |t|
      t.string :brand
      t.integer :capacity
      t.string :features
      t.integer :price
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.reference :vehicule_category

      t.timestamps
    end
  end
end
