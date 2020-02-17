class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :babysitter_id
      t.string :message
      t.string :name

      t.timestamps
    end
  end
end
