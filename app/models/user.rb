class User < ApplicationRecord
  has_many :exploitations
  has_many :produits, through: :exploitations
  has_many :creneaus
  has_many :commandes
  attr_accessor :telephone


  has_one_attached :user_img
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
