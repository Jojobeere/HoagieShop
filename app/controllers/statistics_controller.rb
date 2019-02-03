class StatisticsController < ApplicationController
  def create
      @statistic = Statistic.new(statistic_params)
      redirect_to @statistic
    end

    private
    def statistic_params
      params.require(:statistics).permit(:customer_id, :order_id)
    end
end
