class BasketsController < ApplicationController
  def create
    @basket = Basket.new
    @produit = Produit.find(params[:produit_id])
    @basket.produit = @produit
    @commande = current_user.commandes.find_or_create_by(user: current_user)
    @commande.save!
    @basket.commande = @commande
     if @basket.save
      redirect_to "/produits/index", notice: 'Produit ajouté au panier.'
     else
      redirect_to produits_path, notice: 'erreur'
     end
  end

  private

  def basket_params
    params.require(:basket).permit(:produit_id)
  end
end
