class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :excerpt
      t.text :content
      t.boolean :pinned

      t.timestamps null: false
    end
  end
end
