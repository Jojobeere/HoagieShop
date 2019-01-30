class HoagiesController < ApplicationController
  def index
    @hoagies = Hoagie.all
  end

  def new
    @hoagie = Hoagie.new
  end

  def create
    @hoagie = Hoagie.new(hoagie_params)
    if @hoagie.save
      redirect_to @hoagie
    else
      render 'new'
    end
  end

  def show
    @hoagie = Hoagie.find(params[:id])
  end

  private

  def hoagie_params
    params.require(:hoagie).permit(:base_id)
  end
end
