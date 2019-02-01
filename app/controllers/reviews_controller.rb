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
      redirect_to review_path
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def update
    if @review.update_attributes(review_params)
      redirect_to @review
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :text, :selfie)
  end
  def set_review
   @review = Review.find(params[:id])
 end
end
