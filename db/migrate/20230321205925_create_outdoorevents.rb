class CreateOutdoorevents < ActiveRecord::Migration[7.0]
  def change
    create_table :outdoorevents do |t|
      t.string :name
      t.string :address
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :city
      t.string :activity_type

      t.timestamps
    end
  end
end
