class Public::FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(campsite_id: params[:campsite_id])
  end

  def destroy
    @campsite = Campsite.find(params[:campsite_id])
    @favorite = current_user.favorites.find_by(campsite_id: @campsite.id)
    @favorite.destroy
  end
end