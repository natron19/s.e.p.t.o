class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :amount
      t.string :frequency
      t.datetime :startdate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
