class BasesController < ApplicationController
  http_basic_authenticate_with name: "admin247", password: "secret!", except: [:index, :show]
  def index
    @bases = Base.all
  end
end
