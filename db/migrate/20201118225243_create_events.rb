class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :client_id
      t.string :event_name
      t.string :location_name
      t.string :location_address
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
