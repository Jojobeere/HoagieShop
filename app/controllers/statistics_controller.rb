class StatisticsController < ApplicationController
  def create
      @statitic = Statistic.new(statistic_params)
      redirect_to @statistics
    end

    private
    def statistic_params
      params.require(:statistics).permit(:customer_id, :order_id)
    end
end
