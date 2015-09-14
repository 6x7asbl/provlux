class ChanteSourceIdToString < ActiveRecord::Migration
  def change
    change_column :interests, :source_id, :string
  end
end
