class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = "投稿しました"
      redirect_to micropost_path(@micropost)
    else
      flash[:danger] = "コメントは1〜150字以内で入力してください"
      redirect_to micropost_path(@micropost)
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    flash[:success] = "削除しました"
    redirect_to request.referrer
  end

  private 

    def comment_params
      params.require(:comment).permit(:content)
    end
end