class Creneau < ApplicationRecord
  belongs_to :user
  belongs_to :commande, optional: true
end
