class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.text :address
      t.string :phone
      t.string :password_digest
      t.string :token
      t.string :username

      t.timestamps
    end
    add_index :users, :token, unique: true
  end
end
