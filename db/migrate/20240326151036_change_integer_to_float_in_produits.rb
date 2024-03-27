class ChangeIntegerToFloatInProduits < ActiveRecord::Migration[7.1]
  def change
    change_column :produits, :price, :float
  end
end
