# https://www.railstutorial.org/book/basic_login %
class SessionsController < ApplicationController
  def new
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
