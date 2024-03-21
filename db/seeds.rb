# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Exploitation.destroy_all
User.destroy_all

user1 = User.create!(email: "superman@lewagon.com", password: "123456", name: "Superman")
user2 = User.create!(email: "georges@lewagon.com", password: "123456", name: "Georges")
user3 = User.create!(email: "fermier@lewagon.com", password: "123456", name: "Jean")
user4 = User.create!(email: "jeanette@lewagon.com", password: "123456", name: "Jeanette")
user5 = User.create!(email: "sophie@lewagon.com", password: "123456", name: "Sophie")

exploitation1 = Exploitation.create!(name: 'Les Côteaux Nantais', address: "3 place Pierre Desfossés, Vertou", user: user1)
exploitation2 = Exploitation.create!(name: 'Marmelade', address: "4 rue Distillerie, Nantes", user: user2)
exploitation3 = Exploitation.create!(name: "Graines d'ici", address: "71 boulevard Alfred Nobel, Rezé", user: user3)
exploitation4 = Exploitation.create!(name: 'Moi, moche et bon', address: "93 rue Libération, Saint Sébastien sur Loire", user: user4)
exploitation5 = Exploitation.create!(name: "C'est qui le patron", address: "5 Place Alexandre Vincent, Nantes", user: user5)
