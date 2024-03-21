class ProduitsController < ApplicationController
  def index
  end
  private

  def produit_params
    params.require(:produit).permit(:name, :price, :photo)
  end
end
