class RemoveAdminFromUserGroup < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_groups, :admin, :boolean
  end
end
