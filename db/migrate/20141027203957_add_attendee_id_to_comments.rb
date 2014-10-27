class AddAttendeeIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :attendee_id, :integer
  end
end
