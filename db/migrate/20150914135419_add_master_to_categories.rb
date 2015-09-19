class AddMasterToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :master, :boolean, default: false
  end
end
