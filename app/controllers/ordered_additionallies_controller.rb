class OrderedAdditionalliesController < ApplicationController
  http_basic_authenticate_with name: 'admin247', password: 'secret!'
  def index
    @extras = OrderedAdditionally.all
  end
end
