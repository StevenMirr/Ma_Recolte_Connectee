class CreateBaskets < ActiveRecord::Migration[7.1]
  def change
    create_table :baskets do |t|
      t.references :produits, null: false, foreign_key: true
      t.references :commandes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
