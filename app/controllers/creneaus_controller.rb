# app/controllers/creneaus_controller.rb
class CreneausController < ApplicationController
  before_action :set_creneau, only: [:edit, :update, :destroy]

  # GET /creneaus/new
  def new
    @creneau = current_user.creneaus.build
  end

  # POST /creneaus
  def create
    @creneau = current_user.creneaus.build(creneau_params)

    if @creneau.save
      redirect_to root_path, notice: 'Le créneau choisi a été enregistré !'
    else
      render :new
    end
  end

  # GET /creneaus/1/edit
  def edit
  end

  # PATCH/PUT /creneaus/1
  def update
    if @creneau.update(creneau_params)
      redirect_to root_path, notice: 'Le créneau a été mis à jour'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creneau
      @creneau = current_user.creneaus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creneau_params
      params.require(:creneau).permit(:some_attribute)
    end

end
