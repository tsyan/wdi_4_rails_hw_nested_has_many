class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.integer :user_id

      t.timestamps
    end
  end
end
