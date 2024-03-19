class Commande < ApplicationRecord
  belongs_to :creneau
  belongs_to :commande
  has_many :produits
end
