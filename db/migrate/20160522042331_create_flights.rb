class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :start
      t.integer :duration
      t.references :from_airport
      t.references :to_airport
      t.timestamps null: false
    end
  end
end
