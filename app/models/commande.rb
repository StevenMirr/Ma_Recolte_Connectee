class Commande < ApplicationRecord
  belongs_to :creneau
  has_many :produits
end
