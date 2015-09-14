class RemoveInterestCategoryIdAndInterestGooglePlusUrl < ActiveRecord::Migration
  def change
    remove_column :interests, :category_id
    remove_column :interests, :google_plus_url
  end
end
