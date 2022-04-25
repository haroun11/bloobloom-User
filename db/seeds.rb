# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.destroy_all
Country.create(currency_id: 1, country: "United States" )
Country.create(currency_id: 1, country: "Puerto Rico" )
Country.create(currency_id: 1, country: "El Salvador" )
Country.create(currency_id: 1, country: "Ecuador" )
Country.create(currency_id: 1, country: "Panama" )

Country.create(currency_id: 2, country: "United Kingdom" )
Country.create(currency_id: 2, country: "England" )
Country.create(currency_id: 2, country: "Scotland" )
Country.create(currency_id: 2, country: "Wales" )

Country.create(currency_id: 3, country: "France" )
Country.create(currency_id: 3, country: "Germany" )
Country.create(currency_id: 3, country: "Italy" )
Country.create(currency_id: 3, country: "Spain" )
Country.create(currency_id: 3, country: "Belguim" )
Country.create(currency_id: 3, country: "Netherlands" )
Country.create(currency_id: 3, country: "Greece" )
Country.create(currency_id: 3, country: "Austria" )
Country.create(currency_id: 3, country: "portugal" )

Country.create(currency_id: 4, country: "Jordan" )

Country.create(currency_id: 5, country: "Japan" )
