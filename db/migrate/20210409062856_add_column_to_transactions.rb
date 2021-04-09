class AddColumnToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :symbol, :string
  end
end
