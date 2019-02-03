class HomeController < ApplicationController
  http_basic_authenticate_with name: "admin247", password: "secret!", except: [:index]
  def index
  end
end
