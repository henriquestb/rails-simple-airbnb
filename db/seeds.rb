# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning up database"
Flat.destroy_all
puts " cleaning"
puts " creating"
20.times do
  flat = Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    price_per_night: rand(30..120),
    description: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    number_of_guests: rand(1..12)
  )
  puts "flat #{flat.id} is created"
end
puts "done"
