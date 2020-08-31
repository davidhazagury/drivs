class RemoveVehiculeCategoryIdFromVehicules < ActiveRecord::Migration[6.0]
  def change
    remove_column :vehicules, :vehicule_category_id
  end
end
