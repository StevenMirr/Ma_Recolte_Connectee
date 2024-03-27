class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :edit, :update, :destroy]

  def index
    @exploitation = Exploitation.find(params[:exploitation_id])
    @commande = Commande.find_by(exploitation: @exploitation, user: current_user)
    @produits = @exploitation.produits
    @markers = [{
        lat: @exploitation.latitude,
        lng: @exploitation.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { exploitation: @exploitation }),
        marker_html: render_to_string(partial: "marker", locals: { exploitation: @exploitation })
      }]
    @basket_counts = {}
    @produits.each do |produit|
      @basket_counts[produit.id] = Basket.where(produit_id: produit.id).count
    end
  end

  def show
    @exploitation = Exploitation.find(params[:exploitation_id])
    @related_recipes = @produit.find_related_recipes
  end

  def new
    @produit = Produit.new
    @exploitation = Exploitation.find(params[:exploitation_id])
  end

  def create
    @exploitation = Exploitation.find(params[:exploitation_id])
    @produit = Produit.new(produit_params)
    @produit.exploitation = @exploitation
    if @produit.save
      redirect_to exploitation_produits_path(@exploitation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
      @produit.update(produit_params)
      redirect_to exploitation_produits_path(@exploitation), notice: "Produit mis à jour"
  end

  def destroy
    @produit.destroy
    redirect_to exploitation_produit_path(@produit.exploitation), notice: 'Suppression confirmée'
  end

  private

  def set_produit
    @produit = Produit.find(params[:id])
  end

  def produit_params
    params.require(:produit).permit(:name, :category, :price, :quantity, :availability, :photo)
  end
end
