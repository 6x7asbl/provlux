class AddIndexOnInterestSource < ActiveRecord::Migration
  def change
    add_index :interests, [:source, :source_id]
    add_index :interests, [:latitude, :longitude]
  end
end
