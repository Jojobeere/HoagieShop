class HoagiesController < ApplicationController
  def order
  end

  def create
    render plain: params[:hoagie].inspect
  end
end
