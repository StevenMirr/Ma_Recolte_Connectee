class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :edit, :update, :destroy]

  def index
    @produits = Produit.all
    @exploitation = Exploitation.find(params[:exploitation_id])
  end

  def show
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
    if current_user == @exploitation.user
      @produit.update(produit_params)
      redirect_to exploitation_produits_path(@exploitation), notice: "Produit mis à jour"
    else
      render edit
    end
  end

  def destroy
    @produit.destroy
    redirect_to exploitation_produits_path(@exploitation), notice: 'Suppression confirmée'
  end

  private

  def set_produit
    @produit = Produit.find(params[:id])
  end

  def produit_params
    params.require(:produit).permit(:name, :category, :price, :quantity, :availability, :photo)
  end
end
