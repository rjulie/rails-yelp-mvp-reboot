# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
friterie = { name: "La Friterie", address: "Bruxelles", category: "belgian" }
joe = { name: "Joe's Shangai ", address: "New York", category: "chinese" }
ober =  { name: "Ober Mamma", address: "Paris", category: "italian" }
ichiban = { name: "Ichiban Sushi", address: "Limoges", category: "japanese" }
parfum = { name: "Un parfum de gourmandise", address: "Périgueux", category: "french" }

[friterie, joe, ober, ichiban, parfum].each do |attributes|
  restaurant = Restaurant.new(attributes)
  restaurant.save!
  puts "Created #{restaurant.name}"
end
puts "Finished!"
