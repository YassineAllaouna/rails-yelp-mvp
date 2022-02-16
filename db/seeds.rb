# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french', phone_number: "0757668998" }
pizza_east = { name: 'Pizza East', address: 'London', category: 'italian', phone_number: "0757668998"}
jack_o = { name: 'jack_o', address: 'Bruxelles', category: 'belgian', phone_number: "0757668998"}
piazza_tua = { name: 'piazza_tua', address: 'Roma', category: 'italian', phone_number: "0757668998"}
pekin_dish = { name: 'pekin_dish', address: 'Pekin', category: 'chinese', phone_number: "0757668998"}

[dishoom, pizza_east, jack_o, piazza_tua, pekin_dish].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
