class CreateProduits < ActiveRecord::Migration[7.1]
  def change
    create_table :produits do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :quantity
      t.boolean :availability
      t.references :exploitation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
