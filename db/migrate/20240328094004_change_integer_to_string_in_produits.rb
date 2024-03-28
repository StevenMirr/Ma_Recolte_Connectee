class ChangeIntegerToStringInProduits < ActiveRecord::Migration[7.1]
  def change
    change_column :produits, :quantity, :string
  end
end
