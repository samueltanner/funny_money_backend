class RemoveUserIdFromPositions < ActiveRecord::Migration[6.1]
  def change
    remove_column :positions, :user_id, :integer
  end
end
