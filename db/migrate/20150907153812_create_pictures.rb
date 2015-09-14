class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image_uid
      t.string :image_name
      t.integer :interest_id

      t.timestamps null: false
    end
    add_index :pictures, :interest_id
  end
end
