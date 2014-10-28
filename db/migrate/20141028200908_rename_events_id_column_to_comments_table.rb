class RenameEventsIdColumnToCommentsTable < ActiveRecord::Migration
  def change
  	rename_column :comments, :events_id, :event_id
  end
end
