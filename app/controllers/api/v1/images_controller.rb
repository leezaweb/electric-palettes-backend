class Api::V1::ImagesController < ApplicationController
    def index
      render json: Image.all.limit(10)
    end
end
