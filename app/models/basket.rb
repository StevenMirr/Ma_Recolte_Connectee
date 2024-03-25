class Basket < ApplicationRecord
  belongs_to :produits
  belongs_to :commandes
end
