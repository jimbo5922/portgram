class LikesController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    unless @micropost.love?(current_user)
      @micropost.love(current_user)
      @micropost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
    redirect_to @micropost
  end

  def destroy
    @micropost = Like.find(params[:id]).micropost
    if @micropost.love?(current_user)
      @micropost.unlove(current_user)
      @micropost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
    redirect_to @micropost
  end
end