class BasketsController < ApplicationController
  def create
    @basket = Basket.new(basket_params)
    @produit = Produit.find(params[:produit_id])
    @basket.produit = @produit
    @commande = current_user.commande.find_or_create_by(statut: :pending)
    @basket.commande = @commande
    redirect_to produits_path, notice: 'Produit ajouté au panier.'
  end

  private

  def basket_params
    params.require(:basket).permit(:produit_id)
  end
end
