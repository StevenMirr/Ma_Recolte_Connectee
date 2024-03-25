class DashboardsController < ApplicationController
  def index
    @user = current_user # Ou tout autre méthode pour récupérer l'utilisateur connecté
    @exploitations = @user.exploitations # Si l'utilisateur a plusieurs exploitations
    # Vous pouvez aussi définir ici les données pour le graphique
  end
end
