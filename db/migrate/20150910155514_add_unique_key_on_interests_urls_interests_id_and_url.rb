class AddUniqueKeyOnInterestsUrlsInterestsIdAndUrl < ActiveRecord::Migration
  def change
    add_index :interest_urls, [:interest_id, :url, :provider], :unique => true
  end
end
