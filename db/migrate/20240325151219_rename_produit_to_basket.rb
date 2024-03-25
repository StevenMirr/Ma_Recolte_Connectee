class RenameProduitToBasket < ActiveRecord::Migration[7.1]
  def change
    rename_column :baskets, :produits_id, :produit_id
    rename_column :baskets, :commandes_id, :commande_id
  end
end
