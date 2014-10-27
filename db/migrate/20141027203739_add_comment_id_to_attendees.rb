class AddCommentIdToAttendees < ActiveRecord::Migration
  def change
  	add_column :attendees, :comment_id, :integer
  end
end
