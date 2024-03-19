class CreateCommandes < ActiveRecord::Migration[7.1]
  def change
    create_table :commandes do |t|
      t.integer :total_price
      t.boolean :status
      t.references :creneau, null: false, foreign_key: true
      t.references :produit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
