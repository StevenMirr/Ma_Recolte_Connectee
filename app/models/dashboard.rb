class Dashboard < ApplicationRecord
  # Define your model associations, validations, and methods here
  def show
    @dashboard = Dashboard.find(params[:id])
  end

  # Méthode update
  def update
    @dashboard = Dashboard.find(params[:id])
    if @dashboard.update(dashboard_params)
      redirect_to @dashboard, notice: 'Votre fiche exploitant a été mise à jour'
    else
      render :edit
    end
  end

  private

  # Méthode pour définir les paramètres autorisés
  def dashboard_params
    params.require(:dashboard).permit(:email, :name, :siret, :telephone)
  end

end
