class AddPhotoToProduits < ActiveRecord::Migration[7.1]
  def change
    add_column :produits, :photo, :string
  end
end
