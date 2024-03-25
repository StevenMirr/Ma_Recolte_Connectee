class Commande < ApplicationRecord
  belongs_to :user
  has_one :creneau
  has_many :baskets
  has_many :produits, through: :baskets
end
