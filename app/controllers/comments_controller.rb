class CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
    if @comment.save
      redirect_to review_path(@review)
    else
      render 'new'
    end
  end

  # vorheriger Code zur Sicherheit noch drinnen gelassen
  # def create
  #   @comment = Comment.new(comment_params)
  #   if @comment.save
  #     redirect_to @comment
  #   else
  #     render 'new'
  #   end
  # end

  def show
    @comment = Comment.find(params[:id])
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
