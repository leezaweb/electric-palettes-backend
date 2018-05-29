class Api::V1::ColorsController < ApplicationController
  def index
    render json: Color.order("name asc")
  end
end
