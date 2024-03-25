# app/controllers/commandes_controller.rb
class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]

  def index
    @exploitations = Exploitation.all
    @commandes = Commande.all
  end

  # GET /commandes /show
  def show
    @commandes = Commande.all
  end

  # GET /commandes/new
  def new
    @commande = Commande.new
    @baskets = Basket.where(params[:id])
  end

  # POST /commandes
  def create
    @commande = Commande.new(commande_params)
    @basket = Basket.find(params[:basket_id])
    @commande.basket = @commande
    @commande = current_user.commande.find_or_create_by(statut: )
    @basket.commande = @commande
    redirect_to home_path, notice: 'Produit ajouté au panier.'

    if @commande.save
      redirect_to @commande, notice: 'Votre commande a été créée !'
    else
      render :new
    end
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
