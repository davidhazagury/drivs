class ChangeDefaultValueToNillOfDocumentsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :documentation, nil
  end
end
