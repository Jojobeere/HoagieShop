class SessionsController < ApplicationController
  def new
  end

  def create
    @current_user = Customer.find(login_params)
    if @current_user
      session[:customer_id] = @current_user.id
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:customer_id)
    @current_user = nil
    redirect_to home_index
  end

  private

  def login_params
    params.require(:customer).permit(:id)
  end
end
