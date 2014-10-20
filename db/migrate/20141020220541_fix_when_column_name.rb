class FixWhenColumnName < ActiveRecord::Migration
  def change
  	rename_column :events, :when, :whenz
  end
end
