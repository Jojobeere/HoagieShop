class HoagiesController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!'
  def index
    @hoagies = Hoagie.all
  end

  def show
    @hoagie = Hoagie.find(params[:id])
    @base = Base.find(@hoagie.base_id).name
    @extras = OrderedAdditionally.where(hoagie_id: @hoagie.id)
  end
end
