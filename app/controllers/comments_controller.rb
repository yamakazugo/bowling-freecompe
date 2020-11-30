class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to score_path(@comment.score)
    else
      # @score = @comment.score
      # @comments = @score.comments
      redirect_to root_path
    end
  end 
  
  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, score_id: params[:score_id])
  end
end
