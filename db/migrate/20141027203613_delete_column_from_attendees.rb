class DeleteColumnFromAttendees < ActiveRecord::Migration
  def change
  	remove_column :attendees, :creator
  end
end
