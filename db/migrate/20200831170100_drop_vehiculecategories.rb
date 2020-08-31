class DropVehiculecategories < ActiveRecord::Migration[6.0]
  def change
    drop_table :vehicule_categories
  end
end
