class OrdersController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!', only: [:index]
  def index
    @orders = Order.all
  end

  def new
    if session[:customer_id].nil?
      redirect_to login_path
    else
      @order = Order.new
      @order.customer_id = session[:customer_id]
      @hoagies = @order.hoagies.build
      @extras = @hoagies.ordered_additionallies.build
    end
  end

  def create
    @order = Order.find_by(customer_id: session[:customer_id], status: nil)
    if @order.nil?
      @order = Order.new
      @order.customer_id = session[:customer_id]
    end
    if @order.update(order_params)
      # Calculate price
      hoagies = Hoagie.where(order_id: @order.id)
      price = 0
      hoagies.each do |hoagie|
        price += Base.find(hoagie.base_id).price
        OrderedAdditionally.where(hoagie_id: hoagie.id).each do |extra|
          price += Ingredient.find(extra.ingredient_id).price
        end
        price *= hoagie.count
      end

      @order.update(status: 'Waiting', price: price)
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    if session[:customer_id].nil?
      redirect_to login_path
    else
      @order = Order.find(params[:id])
      if session[:customer_id].to_i == @order.customer_id.to_i
        @customer = Customer.find(@order.customer_id)
        @hoagies = Hoagie.where(order_id: @order.id)
      else
        redirect_to home_index_path
      end
    end
  end

  private

  def order_params
    params.require(:order)
          .permit(:customer_id, :status, :price,
                  hoagies_attributes: [:id, :base_id, :count,
                  ordered_additionallies_attributes: [:id, :hoagie_id, :ingredient_id]])
  end
end
