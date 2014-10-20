class DropTableAttendees < ActiveRecord::Migration
  def change
  	drop_table :attendees
  end
end
