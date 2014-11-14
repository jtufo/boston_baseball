class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :phone, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :age_group, :string
    add_column :users, :primary_position, :string
    add_column :users, :secondary_position, :string
    add_column :users, :bats, :string
    add_column :users, :throws, :string
    add_column :users, :playing_experience, :string
    add_column :users, :last_played, :string
  end
end
