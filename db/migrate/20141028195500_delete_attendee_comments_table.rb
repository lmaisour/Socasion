class DeleteAttendeeCommentsTable < ActiveRecord::Migration
  def change
  	drop_table :attendee_comments
  end
end
