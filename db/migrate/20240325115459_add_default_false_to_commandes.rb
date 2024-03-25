class AddDefaultFalseToCommandes < ActiveRecord::Migration[7.1]
  def change
    change_column :commandes, :status, :boolean, default: false
  end
end
