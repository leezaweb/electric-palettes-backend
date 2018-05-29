class Api::V1::PalettesController < ApplicationController
    def index
      render json: Palette.all
    end
end
