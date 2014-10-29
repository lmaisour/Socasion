class AddStartTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    remove_column :events, :whenz
  end
end
