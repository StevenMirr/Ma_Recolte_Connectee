class BasketsController < ApplicationController
  before_action :set_basket

  def index
    @baskets = Basket.all
  end

  def create
    produit = Produit.find(params[:produit_id])
    @basket.produits << produit
    redirect_to produits_path, notice: 'Produit ajouté au panier.'
  end

  private

  def set_basket
    @basket = current_user.basket
  end
end
