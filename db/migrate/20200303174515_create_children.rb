class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :first_name_string
      t.string :last_name
      t.string :age_integer
      t.integer :family_id
      t.string :gender

      t.timestamps
    end
  end
end
