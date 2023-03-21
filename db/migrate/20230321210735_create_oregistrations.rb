class CreateOregistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :oregistrations do |t|
      t.string :registration_status
      t.references :users, null: false, foreign_key: true
      t.references :outdoorevents, null: false, foreign_key: true

      t.timestamps
    end
  end
end
