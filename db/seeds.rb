# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Chinese Kitchen", address: "7 Boundary St, London E2 7JE", phone_number: "07729472843", category: "chinese")
Restaurant.create!(name: "GBK", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07729472843", category: "belgian")
Restaurant.create!(name: "Jolly", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07729472843", category: "french")
Restaurant.create!(name: "Ramen Kulture", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07729472843", category: "japanese")
Restaurant.create!(name: "Pizza Hut", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07729472843", category: "italian")


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
