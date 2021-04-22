class AddDefaultValueToTransactions < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :status_open, :boolean, :default => true
  end
end
