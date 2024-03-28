class Commande < ApplicationRecord
  belongs_to :user
  belongs_to :exploitation
  has_one :creneau, dependent: :destroy
  has_many :baskets, dependent: :destroy
  has_many :produits, through: :baskets
end
