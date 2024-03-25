class ChangeCommandeId < ActiveRecord::Migration[7.1]
  def change
    rename_column :commandes, :bigint, :creneau_id
  end
end
