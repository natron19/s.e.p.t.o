class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
      t.text :email
      t.text :address

      t.timestamps null: false
    end
  end
end
