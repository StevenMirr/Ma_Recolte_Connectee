class Basket < ApplicationRecord
  belongs_to :commande
  belongs_to :produit
end
