class AddRoleAndCurrentWebsiteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :integer
    add_column :users, :current_website, :integer
    add_index :users, :current_website
  end
end
