class User < ApplicationRecord
  has_many :exploitations
  has_many :produits, through: :exploitations
  has_many :creneaus
  has_many :commandes, through: :creneaus
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
