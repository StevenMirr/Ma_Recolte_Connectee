class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @exploitations = @user.exploitations
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Utilisateur mis à jour!'
    else
      flash.now[:alert] = 'Echec de la mise à jour'
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'Compte supprimé.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
