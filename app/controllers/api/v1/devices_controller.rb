class Api::V1::DevicesController < ApplicationController

    def index
      loader = params[:load] || 1
      limit = 8
      render json: Device.limit(loader.to_i*limit)
      # render json: {colors:Color.all,devices:Device.limit(loader.to_i*limit)}

      # respond_to do |format|
      #   format.json {render :json =>  {colors:Color.all.to_json(:include => [:devices]), devices:Device.all.limit(loader.to_i*limit)}}
      # end
    end

    def all
      render json: Device.all
    end

    def show
      render json: Device.find(params[:id])
    end

    def update

        id = params[:id]
        colors = params[:colors].split(",").map{|x|Color.find_by(name:x)}
        device = Device.find(id)
        this_palette = Palette.create(colors:colors)
        device.palette = this_palette
        device.save


    end

    def destroy
        Device.find(params[:id]).destroy
    end

end
