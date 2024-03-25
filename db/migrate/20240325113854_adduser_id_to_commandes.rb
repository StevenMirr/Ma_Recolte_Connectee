class AdduserIdToCommandes < ActiveRecord::Migration[7.1]
  def change
    add_reference :commandes, :user, foreign_key: true
  end
end
