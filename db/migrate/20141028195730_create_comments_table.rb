class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments_tables do |t|
      t.integer "user_id"
      t.text "message"

      t.timestamps
    end
  end
end
