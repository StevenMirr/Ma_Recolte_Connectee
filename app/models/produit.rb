class Produit < ApplicationRecord
  belongs_to :exploitation
  has_many :commandes

  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
