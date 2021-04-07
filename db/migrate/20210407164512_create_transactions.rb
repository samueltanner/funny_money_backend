class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :position_id
      t.decimal :purchase_price
      t.decimal :purchase_qty
      t.boolean :status_open

      t.timestamps
    end
  end
end
