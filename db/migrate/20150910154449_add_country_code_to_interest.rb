class AddCountryCodeToInterest < ActiveRecord::Migration
  def change
    add_column :interests, :country_code, :string, limit: 2
    add_index :interests, :country_code
  end
end
