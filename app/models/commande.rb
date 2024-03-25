class Commande < ApplicationRecord
  belongs_to :creneau
  has_many :baskets
  has_many :produits, through: :baskets
end
