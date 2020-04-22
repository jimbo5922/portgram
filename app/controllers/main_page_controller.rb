class MainPageController < ApplicationController
  def main
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @comment = Comment.new
      @feed_items = current_user.feed.paginate(page: params[:page]).search(params[:search])
    end
  end
end