class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    if session[:customer_id].nil?
      redirect_to login_path
    else
      @order = Order.new
      @order.customer_id = session[:customer_id]
      @order.hoagies.build
    end
  end

  def create
    @order = Order.find_by(customer_id: session[:customer_id], status: nil)
    if @order.nil?
      @order = Order.new
      @order.customer_id = session[:customer_id]
    end
    @order.status = 'Waiting'
    if @order.update(order_params)
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
    @hoagies = Hoagie.where(order_id: @order.id)
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :status, :price, :hoagies_attributes => [:id, :base_id, :count])
  end

end
