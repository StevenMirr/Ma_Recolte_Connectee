class Commande < ApplicationRecord
  belongs_to :creneau, :commande
  has_many :produits
end
