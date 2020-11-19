class Public::CommentsController < ApplicationController
  def show
    @campsite = Campsite.find(params[:id])
    @comment = Comment.new
    @comments = @campsite.comments
  end

  def create
    @campsite = Campsite.find(params[:campsite_id])
    @comment = @campsite.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :score)
  end
end