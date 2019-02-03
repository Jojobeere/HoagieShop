class CustomersController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!', only: [:index]
  def index
    @customers = Customer.all
  end

  def show
    redirect_to login_path if session[:customer_id].nil?

    if params[:id].to_i == session[:customer_id].to_i
      puts params[:id].to_i
      puts session[:customer_id].to_i
      @customer = Customer.find(params[:id])
    else
      redirect_to login_path
    end
  end
end
