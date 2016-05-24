# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.delete_all
Flight.delete_all

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
    next if table == 'schema_migrations'
    ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end




Airport.create(code: "SFO")
Airport.create(code: "LAX")
Airport.create(code: "JFK")
Airport.create(code: "ATL")

Flight.create(to_airport_id: 2, from_airport_id: 3, duration: 310,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 4, from_airport_id: 3, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 4, from_airport_id: 3, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 3, from_airport_id: 4, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 4, from_airport_id: 2, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 1, from_airport_id: 3, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 1, from_airport_id: 4, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 1, from_airport_id: 2, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 3, from_airport_id: 4, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 3, from_airport_id: 1, duration: 200,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 3, from_airport_id: 3, duration: 400,
              start: DateTime.now+3.days)
Flight.create(to_airport_id: 3, from_airport_id: 2, duration: 120,
              start: DateTime.now+3.days)





Flight.create(to_airport_id: 3, from_airport_id: 2, duration: 200,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 4, from_airport_id: 1, duration: 129,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 4, from_airport_id: 1, duration: 48,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 1, from_airport_id: 2, duration: 120,
              start: DateTime.now+1.weeks)
Flight.create(to_airport_id: 2, from_airport_id: 1, duration: 300,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 1, from_airport_id: 4, duration: 129,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 1, from_airport_id: 3, duration: 48,
              start: DateTime.now+1.week)
Flight.create(to_airport_id: 3, from_airport_id: 3, duration: 120,
              start: DateTime.now+1.weeks)
Flight.create(to_airport_id: 3, from_airport_id: 4, duration: 120,
              start: DateTime.now+1.weeks)
Flight.create(to_airport_id: 3, from_airport_id: 1, duration: 120,
              start: DateTime.now+1.weeks)
