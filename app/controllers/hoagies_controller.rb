class HoagiesController < ApplicationController
  http_basic_authenticate_with name: "admin247", password: "secret!"
  def index
    @hoagies = Hoagie.all
  end

  def new
    @hoagie = Hoagie.new
  end

  def create
    @order = Order.find_by(customer_id: session[:customer_id], status: nil)
    @hoagie = @order.hoagies.build(hoagie_params)
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
    params.require(:hoagie).permit(:base_id, :order_id, :count)
  end
end
