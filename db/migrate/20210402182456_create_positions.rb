class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :user_id
      t.string :symbol
      t.decimal :purchase_price, precision: 10, scale: 4
      t.decimal :purchase_qty, precision: 10, scale: 4
      t.boolean :status_open, default: true

      t.timestamps
    end
  end
end
