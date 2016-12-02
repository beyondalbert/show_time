class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :phone
      t.string :password_hash
      t.string :password_salt
      t.string :auth_token
      t.integer :status
      t.integer :role

      t.timestamps null: false
    end
  end
end
