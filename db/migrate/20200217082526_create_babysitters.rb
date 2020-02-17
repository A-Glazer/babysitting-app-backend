class CreateBabysitters < ActiveRecord::Migration[5.2]
  def change
    create_table :babysitters do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :week_available
      t.string :time_available

      t.timestamps
    end
  end
end
