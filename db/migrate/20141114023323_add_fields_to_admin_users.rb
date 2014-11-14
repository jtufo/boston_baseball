class AddFieldsToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :first_name, :string
    add_column :admin_users, :last_name, :string
    add_column :admin_users, :franchise, :string
    add_column :admin_users, :league, :string
  end
end
