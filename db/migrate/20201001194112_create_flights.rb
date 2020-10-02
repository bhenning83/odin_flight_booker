class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer  :from_airport_id
      t.integer  :to_airport_id
      t.datetime :departure_time
      t.time     :duration

      t.timestamps
    end
  end
end