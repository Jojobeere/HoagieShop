class CommentsController < ApplicationController
  def new
    @comments = Comment.all
  end

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:review_id, :text)
  end
end
