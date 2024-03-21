require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Produit.destroy_all
Exploitation.destroy_all
User.destroy_all

user1 = User.create!(email: "superman@lewagon.com", password: "123456", name: "Superman")
user2 = User.create!(email: "georges@lewagon.com", password: "123456", name: "Georges")
user3 = User.create!(email: "fermier@lewagon.com", password: "123456", name: "Jean")
user4 = User.create!(email: "jeanette@lewagon.com", password: "123456", name: "Jeanette")
user5 = User.create!(email: "sophie@lewagon.com", password: "123456", name: "Sophie")

file = URI.open("https://storage.sbg.cloud.ovh.net/v1/AUTH_dd430e2a89404e97bf6a772afa5dd938/2als-production-public/producer_photo/1768e9f244a.png")
exploitation1 = Exploitation.new(name: 'Les Côteaux Nantais', address: "3 place Pierre Desfossés, Vertou", user: user1)
exploitation1.description = "Mon exploitation est située à 20 minutes au sud-est de Nantes. Je vous acceuille afin de récupérer vos cmmandes, le mercredi de 15h à 19h et le samedi de 16h à 19h. Vous pouvez également me retrouver au marché de Remuillé le dimanche matin."
exploitation1.logo.attach(io: file, filename: "coteaux.png", content_type: "image/png")
exploitation1.save
file = URI.open("https://cleliablabla.com/wp-content/uploads/2020/06/22195791_1968979266714699_3202439830026857682_n.png")
exploitation2 = Exploitation.new(name: 'Marmelade', address: "4 rue Distillerie, Nantes", user: user2)
exploitation2.logo.attach(io: file, filename: "marmelade.png", content_type: "image/png")
exploitation2.save
file = URI.open("https://www.thefeebles.com/wp-content/uploads/2017/06/1Graines-dici_logo_generique-1024x718.jpg")
exploitation3 = Exploitation.new(name: "Graines d'ici", address: "71 boulevard Alfred Nobel, Rezé", user: user3)
exploitation3.logo.attach(io: file, filename: "graines.png", content_type: "image/png")
exploitation3.save
file = URI.open("https://locavor.fr/data/fournisseurs/logos/moi-moche-et-bon-5462-1593529383.jpg")
exploitation4 = Exploitation.new(name: 'Moi, moche et bon', address: "93 rue Libération, Saint Sébastien sur Loire", user: user4)
exploitation4.logo.attach(io: file, filename: "moi.png", content_type: "image/png")
exploitation4.save
file = URI.open("https://www.3moulins.fr/sites/default/files/logo_3moulins.png")
exploitation5 = Exploitation.new(name: "Les 3 moulins", address: "La Brosse Tenaud, Saint Philbert de Grand Lieu", user: user5)
exploitation5.logo.attach(io: file, filename: "moulins.png", content_type: "image/png")
exploitation5.save

produit1 = Produit.create!(name: "carottes", category:"légume", price:"3€/kg", quantity:"2", availability:"true", exploitation: exploitation1)
produit2 = Produit.create!(name: "pommes de terre", category:"tubercule", price:"3€/kg", quantity:"2", availability:"true", exploitation: exploitation1)
produit3 = Produit.create!(name: "oeufs", category:"oeuf", price:"3€/kg", quantity:"2", availability:"true", exploitation: exploitation1)
produit4 = Produit.create!(name: "salades", category:"salade", price:"3€/kg", quantity:"2", availability:"true", exploitation: exploitation1)
produit5 = Produit.create!(name: "navets", category:"légume", price:"3€/kg", quantity:"2", availability:"true", exploitation: exploitation1)
