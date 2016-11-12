class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.string :name
      t.string :domain
      t.string :name_servers
      t.boolean :online
      t.timestamp :published_at

      t.timestamps
    end
  end
end
