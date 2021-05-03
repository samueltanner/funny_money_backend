class AddAdminToUserGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :user_groups, :admin, :boolean, default: false
  end
end
