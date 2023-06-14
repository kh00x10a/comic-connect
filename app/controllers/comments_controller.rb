class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comic_path(@comment.comic)
    else
      @comic = @comment.comic
      @comments =@comic.comments
      render "comics/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, comic_id: params[:comic_id])
  end
end
