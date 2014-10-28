class Changetablename < ActiveRecord::Migration
  def change
  	rename_table :comments_tables, :comments
  end
end
