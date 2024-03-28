# app/controllers/commandes_controller.rb
class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]

  def index
    @exploitation = Exploitation.find(params[:exploitation_id])
    @commandes = @exploitation.commandes.where(status: true)
  end

  def show
    @commande = Commande.find(params[:id])
    @baskets = @commande.baskets
    @creneau = @commande.creneau || Creneau.new
  end

  # GET /commandes/1/edit
  def edit
  end

  # PATCH/PUT /commandes
  def update
    if @commande.update(commande_params)
      redirect_to @commande, notice: 'Votre commande a été mise à jour'
    else
      render :edit
    end
  end

  # DELETE /commandes
  def destroy
    @commande.destroy
    redirect_to commandes_url, notice: 'Votre commande a bien été supprimée'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commande
      @commande = Commande.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commande_params
      params.require(:commande).permit(:creneau_id, :exploitation_id)
    end
end
