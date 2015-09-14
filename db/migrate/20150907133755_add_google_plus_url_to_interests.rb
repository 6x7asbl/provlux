class AddGooglePlusUrlToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :google_plus_url, :string
  end
end
