class Produit < ApplicationRecord
  belongs_to :exploitation
  has_many :commandes
end
