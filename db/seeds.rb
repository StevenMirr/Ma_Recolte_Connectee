# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Exploitation.destroy_all



user1 = User.create!(email: "superman@lewagon.com", password: "123456", name: "Superman")

exploitation1 = Exploitation.create!(name: 'Salade', address: "4 rue des choux", user_id: user1.id)
