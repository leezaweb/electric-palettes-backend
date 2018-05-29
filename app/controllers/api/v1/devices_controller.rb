class Api::V1::DevicesController < ApplicationController

    def index
      render json: Device.all.order(:decade)
    end

    def show
      render json: Device.find(params[:id])
    end

    def update
      puts "&&&&&&&&&&#{params}&&&&&&&&&&&&"

        id = params[:id]
        colors = params[:colors].split(",").map{|x|Color.find_by(name:x)}
        puts "&&&&&&&&&&#{colors}&&&&&&&&&&&&"
        device = Device.find(id)
        puts "&&&&&&&&&&#{device}&&&&&&&&&&&&"
        this_palette = Palette.create(colors:colors)
        device.palette = this_palette
        device.save
        puts "&&&&&&&&&&#{device}&&&&&&&&&&&&"


    end

    def destroy
        Device.find(params[:id]).destroy
    end

end
