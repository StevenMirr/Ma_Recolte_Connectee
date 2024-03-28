class CreneausController < ApplicationController
  def new
    @creneau = Creneau.new
  end

  def create
    @creneau = Creneau.new(creneau_params)
    @creneau.user = current_user
    @commande = Commande.find(params[:commande_id])
    @creneau.commande = @commande
    if @creneau.save
      @commande.update(status: true)
      redirect_to exploitation_commande_path(@commande.exploitation, @commande), notice: "Créneau créé avec succès."
    else
      render "commandes/new"
    end
  end

  private

  def creneau_params
    params.require(:creneau).permit(:date, :start_time, :end_time)
  end
end

#   before_action :set_creneau, only: [ :edit, :update, :destroy ]
# before_action :set_commande, only: [:new, :create]

#   # GET /creneaus/new
#   def new
#     @creneau = @commande.creneaus.build
#   end

#   # POST /creneaus
#   def create
#     @creneau = @commande.creneaus.build(creneau_params)

#     if @creneau.save
#       redirect_to root_path, notice: 'Le créneau choisi a été enregistré !'
#     else
#       render :new
#     end
#   end

# #   # GET /creneaus/1/edit
# #   def edit
# #   end

# #   # PATCH/PUT /creneaus/1
# #   def update
# #     if @creneau.update(creneau_params)
# #       redirect_to root_path, notice: 'Le créneau a été mis à jour'
# #     else
# #       render :edit
# #     end
# #   end

#   private

#     def set_commande
#       @commande = Commande.find(params[:commande_id])
#     end
# #     # Use callbacks to share common setup or constraints between actions.
# #     def set_creneau
# #       @creneau = current_user.creneaus.find(params[:id])
# #     end

#     # Only allow a trusted parameter "white list" through.
#     def creneau_params
#       params.require(:creneau).permit(:some_attribute)
#     end
