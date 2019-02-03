class CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
<<<<<<< HEAD
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
=======
    redirect_to review_path(@review)
>>>>>>> a6bb9372d4367791a70ff92ed16efcc8ba0c8fe0
  end

  def destroy
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    @comment.destroy
    redirect_to review_path(@review)
<<<<<<< HEAD
end
=======
  end
>>>>>>> a6bb9372d4367791a70ff92ed16efcc8ba0c8fe0

  private
  def comment_params
    params.require(:comment).permit(:customer_id, :text)
  end
end
