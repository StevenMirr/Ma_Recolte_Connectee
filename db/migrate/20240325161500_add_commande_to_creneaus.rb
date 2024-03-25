class AddCommandeToCreneaus < ActiveRecord::Migration[7.1]
  def change
    add_reference :creneaus, :commande, foreign_key: true
  end
end
