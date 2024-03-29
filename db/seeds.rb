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
Creneau.destroy_all
Basket.destroy_all
Commande.destroy_all
Produit.destroy_all
Exploitation.destroy_all
User.destroy_all

file = URI.open("https://www.mokaddict.com/media/cache/og_filter/2019/01/8583-rah-47071972814.jpg")
user1 = User.new(email: "francis@lewagon.com", password: "123456", name: "Francis")
user1.user_img.attach(io:file, filename:"francis.jpeg", content_type: "image/png")
user1.save
file = URI.open("https://images.lesindesradios.fr/fit-in/1100x2000/filters:format(webp)/radios/rts/importrk/news/original/5f69d05ff2fd57.43951437.jpg")
user2 = User.new(email: "georges@lewagon.com", password: "123456", name: "Georges")
user2.user_img.attach(io:file, filename:"georges.jpeg", content_type: "image/png")
user2.save
user3 = User.create!(email: "fermier@lewagon.com", password: "123456", name: "Jean")
user4 = User.create!(email: "jeanette@lewagon.com", password: "123456", name: "Jeanette")
user5 = User.create!(email: "sophie@lewagon.com", password: "123456", name: "Sophie")
file = URI.open("https://images1.fanpop.com/images/photos/1400000/Eva-eva-longoria-1437602-1518-1998.jpg")
user6 = User.new(email: "eva@lewagon.com", password: "123456", name: "Eva")
user6.user_img.attach(io:file, filename:"eva.jpeg", content_type: "image/png")
user6.save
file = URI.open("https://d3mdtxxgfz6upn.cloudfront.net/WEBFILES/000/201/321/355299-201321.jpg")
user7 = User.new(email: "jose@lewagon.com", password: "123456", name: "José")
user7.user_img.attach(io:file, filename:"jose.jpeg", content_type: "image/png")
user7.save

file = URI.open("https://storage.sbg.cloud.ovh.net/v1/AUTH_dd430e2a89404e97bf6a772afa5dd938/2als-production-public/producer_photo/1768e9f244a.png")
exploitation1 = Exploitation.new(name: 'Les Côteaux Nantais', address: "3 place Pierre Desfossés, Vertou", user: user1)
exploitation1.description = "Bienvenue aux Coteaux Nantais, où la nature s'épanouit avec générosité. Parcourez nos vergers et nos champs, où fruits et légumes sont cultivés dans le respect de la terre et des saisons. Plongez dans une symphonie de couleurs et de saveurs, où chaque produit raconte l'histoire de notre terroir nantais. Découvrez une agriculture responsable et des produits frais qui éveilleront vos papilles à chaque bouchée. Je vous acceuille afin de récupérer vos commandes, le mercredi de 15h à 19h et le samedi de 16h à 19h. Vous pouvez également me retrouver au marché de Remouillé le dimanche matin."
exploitation1.logo.attach(io: file, filename: "coteaux.png", content_type: "image/png")
exploitation1.save
file = URI.open("https://cleliablabla.com/wp-content/uploads/2020/06/22195791_1968979266714699_3202439830026857682_n.png")
exploitation2 = Exploitation.new(name: 'Marmelade', address: "4 rue Distillerie, Nantes", user: user2)
exploitation2.description = "Bienvenue chez Marmelade, où la nature s'épanouit avec éclat. Plongez dans notre jardin de délices, où les fruits juteux et les légumes croquants sont cultivés avec soin pour vous offrir une expérience gustative incomparable. Découvrez la fraîcheur et la qualité qui font de chaque bouchée un véritable festin pour les sens."
exploitation2.logo.attach(io: file, filename: "marmelade.png", content_type: "image/png")
exploitation2.save
file = URI.open("https://www.thefeebles.com/wp-content/uploads/2017/06/1Graines-dici_logo_generique-1024x718.jpg")
exploitation3 = Exploitation.new(name: "Graines d'ici", address: "71 boulevard Alfred Nobel, Rezé", user: user3)
exploitation3.description = "Bienvenue chez Graines d'Ici, où la terre féconde donne naissance à une abondance de saveurs. Explorez notre marché frais, où fruits et légumes cultivés localement rayonnent de vitalité et de qualité. Plongez dans l'authenticité de notre sélection, cultivée avec soin pour une expérience culinaire qui célèbre la richesse de notre terroir."
exploitation3.logo.attach(io: file, filename: "graines.png", content_type: "image/png")
exploitation3.save
file = URI.open("https://locavor.fr/data/fournisseurs/logos/moi-moche-et-bon-5462-1593529383.jpg")
exploitation4 = Exploitation.new(name: 'Moi, moche et bon', address: "93 rue Libération, Saint Sébastien sur Loire", user: user4)
exploitation4.description = "Bienvenue chez Moi, Moche et Bon, où l'authenticité et la simplicité se marient à la perfection. Découvrez notre marché aux trésors, où fruits et légumes côtoient des produits d'épicerie sélectionnés avec soin. Plongez dans un univers où la beauté rustique rencontre la qualité irréprochable, pour une expérience culinaire aussi délicieuse qu'inspirante."
exploitation4.logo.attach(io: file, filename: "moi.png", content_type: "image/png")
exploitation4.save
file = URI.open("https://www.3moulins.fr/sites/default/files/logo_3moulins.png")
exploitation5 = Exploitation.new(name: "Les 3 moulins", address: "La Brosse Tenaud, Saint Philbert de Grand Lieu", user: user5)
exploitation5.description = "Bienvenue aux 3 Moulins, une oasis de saveurs et de convivialité. Explorez notre marché verdoyant, où fruits et légumes frais rivalisent en fraîcheur et en goût. Plongez dans notre épicerie artisanale, où les produits locaux et les délices du terroir vous attendent à chaque rayon. Découvrez un monde où la qualité rencontre la diversité, pour une expérience gustative inoubliable."
exploitation5.logo.attach(io: file, filename: "moulins.png", content_type: "image/png")
exploitation5.save

file = URI.open("https://img-3.journaldesfemmes.fr/KcrwoKVyt9WyplVHiDLvXVjKN7k=/1500x/smart/4e81297bc0b94259b9c83b576873e28a/ccmcms-jdf/25936494.jpg")
produit1 = Produit.new(name: "Carottes", category:"légume", price:"1.10€", quantity:"le kg", availability:"true", exploitation: exploitation1)
produit1.photo.attach(io: file, filename: "carottes.png", content_type: "image/png")
produit1.save
file = URI.open("https://www.jardinet.fr/wp-content/uploads/2023/03/Tout-savoir-sur-la-pomme-de-terre-1.jpg")
produit2 = Produit.new(name: "Pommes de terre", category:"tubercule", price:"2€", quantity:"le kg", availability:"true", exploitation: exploitation1)
produit2.photo.attach(io: file, filename: "patates.png", content_type: "image/png")
produit2.save
file = URI.open("https://img.passeportsante.net/1200x675/2021-05-03/i102110-oeuf-nu.webp")
produit3 = Produit.new(name: "Oeufs (x12)", category:"oeuf", price:"3€", quantity:"l'unité", availability:"true", exploitation: exploitation1)
produit3.photo.attach(io: file, filename: "oeufs.png", content_type: "image/png")
produit3.save
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/20/Kropsla_herfst.jpg")
produit4 = Produit.new(name: "Salade", category:"salade", price:"1.40€", quantity:"l'unité", availability:"true", exploitation: exploitation1)
produit4.photo.attach(io: file, filename: "salades.png", content_type: "image/png")
produit4.save
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpiqlyU5p3KOdIr5TqNF7p6SljZ3A_y_78Cw&usqp=CAU")
produit5 = Produit.new(name: "Navets", category:"légume", price:"2.50€", quantity:"le kg", availability:"true", exploitation: exploitation1)
produit5.photo.attach(io: file, filename: "navets.png", content_type: "image/png")
produit5.save

Creneau.create!(date: Date.today, start_time: 15, end_time: 19, user: user1)
Creneau.create!(date: Date.today, start_time: 12, end_time: 19, user: user2)
Creneau.create!(date: Date.today, start_time: 16, end_time: 19, user: user3)
