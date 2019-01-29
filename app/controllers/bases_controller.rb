class BasesController < ApplicationController
  def index
    @bases = Base.all
  end
end
