class CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
    redirect_to review_path(@review)
  end

  def show
    @comment = Comment.find(params[:id])
    redirect_to review_path(@review)
  end

  def destroy
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    @comment.destroy
    redirect_to review_path(@review)
  end

  private
  def comment_params
    params.require(:comment).permit(:customer_id, :text)
  end
end
