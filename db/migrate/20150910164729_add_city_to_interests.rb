class AddCityToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :city, :string
  end
end
