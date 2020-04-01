class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table "participants", force: :cascade do |t|
      t.integer "child_id"
      t.integer "playdate_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
  end
  end
end
