class CreateJoinTableWebsitesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :websites, :users do |t|
      t.index [:website_id, :user_id]
      t.index [:user_id, :website_id]
    end
  end
end
