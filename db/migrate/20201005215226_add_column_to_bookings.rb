class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :passenger_id, :integer
  end
end
