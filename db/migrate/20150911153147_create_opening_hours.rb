class CreateOpeningHours < ActiveRecord::Migration
  def change
    create_table :opening_hours do |t|
      t.integer :interest_id, null: false
      t.integer :day_of_week, null: false, limit: 1
      t.time :open_time, null: false
      t.time :close_time, null: false

      t.timestamps null: false
    end

    add_index :opening_hours, :interest_id
    add_index :opening_hours, [:interest_id, :day_of_week, :open_time, :close_time], unique: true, name: 'index_opening_hours_unique'
  end
end
