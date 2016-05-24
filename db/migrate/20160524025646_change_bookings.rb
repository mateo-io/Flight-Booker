class ChangeBookings < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
      t.remove :passengers
      t.integer :passengers_number 
    end
  end
end
