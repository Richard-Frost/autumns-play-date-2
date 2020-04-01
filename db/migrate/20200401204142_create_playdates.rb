class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.string "playdate_title"
      t.datetime "datetime"
      t.string "location"
      t.string "description"
      t.integer "originator"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "zipcode"
      t.float "latitude"
      t.float "longitude"

      t.timestamps
    end
  end
end

 