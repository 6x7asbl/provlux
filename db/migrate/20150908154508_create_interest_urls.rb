class CreateInterestUrls < ActiveRecord::Migration
  def change
    create_table :interest_urls do |t|
      t.integer :interest_id
      t.string :url
      t.string :provider
      t.boolean :active, default: false

      t.timestamps null: false
    end

    add_index :interest_urls, :interest_id
    add_index :interest_urls, [:active, :interest_id]
    add_index :interest_urls, :provider
    add_index :interest_urls, [:active, :provider]
    add_index :interest_urls, :active
  end
end
