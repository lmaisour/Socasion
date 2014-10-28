class AddColumnToCommentsTable < ActiveRecord::Migration
  def change
  	add_column :comments, :events_id, :integer
  end
end
