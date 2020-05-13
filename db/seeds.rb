# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "creating restarants"

zetta = {name:"Zetta", address: "25, Barking St, London", category: "italian"}
dishoom = {name:"Dishoom", address: "25, Post St, London", category: "chinese"}
wood_fire = {name:"Wood Fire", address: "Canary Wharf, London", category: "italian"}
sweet = {name:"Sweet", address: "12, Ramsy St, London", category: "japanese"}
wagamame = {name:"Wagamame", address: "2, Bank St, London", category: "chinese"}

[zetta, dishoom, wood_fire, sweet, wagamame].each do|attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end 
puts "Finished!"