class CreateCategoriesInterestsTable < ActiveRecord::Migration
  def change
    create_table :categories_interests, :id => false do |t|
      t.references :category
      t.references :interest
    end
    add_index :categories_interests, [:category_id, :interest_id]
    add_index :categories_interests, :interest_id
  end
end
