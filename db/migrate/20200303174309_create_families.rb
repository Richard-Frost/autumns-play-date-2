class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :family_name
      t.string :zipcode

      t.timestamps
    end
  end
end
