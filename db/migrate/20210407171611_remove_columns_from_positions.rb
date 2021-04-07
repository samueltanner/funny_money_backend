class RemoveColumnsFromPositions < ActiveRecord::Migration[6.1]
  def change
    remove_column :positions, :purchase_price, :decimal
    remove_column :positions, :purchase_qty, :decimal
    remove_column :positions, :status_open, :boolean
  end
end
