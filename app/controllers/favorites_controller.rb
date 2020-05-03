class FavoritesController < ApplicationController
  def create
    @micropost = Micropost.find(params[:micropost_id])
    favorite = current_user.favorites.build(micropost_id: params[:micropost_id])
    favorite.save
    redirect_to @micropost
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    favorite = Favorite.find_by(micropost_id: params[:micropost_id], user_id: current_user.id)
    favorite.destroy
    redirect_to @micropost
  end

  def index
    @user = current_user
    @favorite_microposts = @user.favorite_microposts
  end
end