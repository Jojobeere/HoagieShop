class StatisticsController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!', only: [:index]
  def create
    @statistic = Statistic.new(statistic_params)
    redirect_to @statistic
    end

  private

  def statistic_params
    params.require(:statistics).permit(:customer_id, :order_id)
  end
end
