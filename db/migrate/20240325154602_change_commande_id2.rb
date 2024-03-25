class ChangeCommandeId2 < ActiveRecord::Migration[7.1]
  def change
    change_column :commandes, :creneau_id, :bigint, null: true
  end
end
