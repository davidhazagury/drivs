class CreateVehiculeCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicule_categories do |t|
      t.string :type

      t.timestamps
    end
  end
end
