class AddVehiculeCategoryToVehicules < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicules, :vehicule_category, :string
  end
end
