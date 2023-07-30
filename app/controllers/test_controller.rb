class TestController < ApplicationController
  def index
    render json: { message: "This is a test message." }
  end
end
