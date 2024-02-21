# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 7238972837, category: "italian"}
pizza_east =  {name: "pizza east", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 7238972837, category: "japanese"}
pizza_west =  {name: "Pizza west", address: "56A westdict High St, Paris E1 6PQ", phone_number: 7238972837, category: "french"}
pizza_north =  {name: "Pizza north", address: "76B melon drive St, boston E1 6PQ", phone_number: 7238972837, category: "italian"}
pizza_south =  {name: "Pizza south", address: "rue deq fruits, Tunis E1 6PQ", phone_number: 7238972837, category: "italian"}

[dishoom, pizza_east, pizza_west, pizza_north, pizza_south].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
