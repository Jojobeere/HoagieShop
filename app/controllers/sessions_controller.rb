# https://www.railstutorial.org/book/basic_login %
class SessionsController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!', only: %i[index edit show]
  def new
    unless session[:customer_id].nil?
      @current_user = Customer.find(session[:customer_id])
      redirect_to customer_path(@current_user)
    end
  end

  def create
    @current_user = Customer.find_by(login_params)
    if @current_user
      session[:customer_id] = @current_user.id
      redirect_to customer_path(@current_user)
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:customer_id)
    @current_user = nil
    redirect_to home_index_path
  end

  private

  def login_params
    params.require(:customer).permit(:id)
  end
end
