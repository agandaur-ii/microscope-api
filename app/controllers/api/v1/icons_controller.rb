class Api::V1::IconsController < ApplicationController
    def create
        icon = Icon.create(icon_params)
        #logic for ancestry, if present

        render json: IconSerializer.new(icon)
    end

    def update 
        icon = Icon.find(params[:id])
        icon.update(icon_params)

        render json: BodySerializer.new(body)
    end

    def destroy
        icon = Icon.find(params[:id])
        if icon 
            icon.destroy
            render json: {message: "Icon deleted"}
        else
            render json: {message: "Icon could not be located"}
        end
    end

    private

    def icon_params
        params.require(:icon).permit(:board_id, :title)
    end
end
