class ReviewsController < ApplicationController

  def new
    @reviews = Review.all
  end

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:title, :text)
  end
end
