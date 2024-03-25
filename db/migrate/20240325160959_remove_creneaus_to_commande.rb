class RemoveCreneausToCommande < ActiveRecord::Migration[7.1]
  def change
    remove_reference :commandes, :creneau, index: true, foreign_key: true
  end
end
