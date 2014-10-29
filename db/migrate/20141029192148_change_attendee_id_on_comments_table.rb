class ChangeAttendeeIdOnCommentsTable < ActiveRecord::Migration
  def change
  	rename_column :comments, :attendee_id, :user_id
  end
end
