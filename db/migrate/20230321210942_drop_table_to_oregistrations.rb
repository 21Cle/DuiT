class DropTableToOregistrations < ActiveRecord::Migration[7.0]
  def change
    drop_table :outdoorregistrations
  end
end
