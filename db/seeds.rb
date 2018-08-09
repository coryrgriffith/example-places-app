# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

place = Place.new(name: "Wayne's Pizza", address: "542 Northwest Hwy.")
place.save

place = Place.new(name: "Arlington Ale House", address: "7253 Street Ave.")
place.save

place = Place.new(name: "AMC Movie Theatre", address: "861 Rand Rd.")
place.save