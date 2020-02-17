class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.integer :babysitter_id
      t.integer :day_of_week
      t.integer :time_of_day

      t.timestamps
    end
  end
end
