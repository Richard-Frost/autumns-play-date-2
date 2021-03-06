class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :family_id
      t.boolean :parent, default: false
      t.string :password_digest

      t.timestamps
    end
  end
end
