class Creneau < ApplicationRecord
  belongs_to :user
  has_many :commandes
end
