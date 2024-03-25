class RemoveProduitId < ActiveRecord::Migration[7.1]
  def change
    remove_column :commandes, :produit_id, :bigint
    rename_column :commandes, :creneau_id, :bigint
    change_column :commandes, :total_price, :float, default: 0.00
  end
end
