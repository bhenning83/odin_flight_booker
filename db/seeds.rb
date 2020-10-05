# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all


DIA = Airport.create({ city: 'Denver',      code: 'DIA' })
LNK = Airport.create({ city: 'Lincoln',     code: 'LNK' })
OMA = Airport.create({ city: 'Omaha',       code: 'OMA' })
KCI = Airport.create({ city: 'Kansas City', code: 'KCI' })
ATL = Airport.create({ city: 'Atlanta',     code: 'ATL' })

Flight.create([{ from_airport: LNK, to_airport: DIA, date: '2020-10-02',
                departure_time: '2020-10-02 06:33:00', duration: '01:38:00' },
               { from_airport: OMA, to_airport: ATL, date: '2020-10-31',
                departure_time: '2020-10-31 08:12:00', duration: '02:52:00' },
               { from_airport: ATL, to_airport: KCI, date: '2020-10-31',
                departure_time: '2020-10-31 12:15:00', duration: '02:44:00' },
               { from_airport: LNK, to_airport: KCI, date: '2020-12-15',
                departure_time: '2020-12-15 05:57:00', duration: '00:49:00' },
               { from_airport: KCI, to_airport: DIA, date: '2020-12-15',
                departure_time: '2020-12-15 08:23:00', duration: '01:22:00' },
               { from_airport: LNK, to_airport: DIA, date: '2020-10-02',
                departure_time: '2020-10-02 07:45:00', duration: '01:22:00' }
              ])