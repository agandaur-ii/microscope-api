class Api::V1::IconsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        icons = Icon.all
        options = { include: [:bodies]}
        render json: IconSerializer.new(icons, options)
    end

    def create
        icon = Icon.new(icon_params)
        #logic for ancestry, if present
        if icon.title == "" || params[:description] == "" || params[:content] == ""
            render json: {error: 'Form must be filled out completely'}, status: :incomplete
        else
            icon.save
            body = Body.new(body_params)
            body.icon_id = icon.id
            body.save

            #options = {include: [:bodies]}
            options[:include] = [:bodies, :'bodies.custom_url']
            render json: IconSerializer.new(icon, options).serialized_json
        end
    end

    def update 
        icon = Icon.find(params[:id])
        icon.update(icon_params)

        render json: BodySerializer.new(body)
    end

    def destroy
        icon = Icon.find(params[:id].to_i)
        if icon 
            icon.destroy
            icons = Icon.all
            render json: IconSerializer.new(icons)
        else
            render json: {message: "Icon could not be located"}
        end
    end

    def icons_for_board
        icons = Icon.all.select{|icon| icon.board_id == params[:id].to_i}
        if icons == nil || icons == []
            render json: {message: "Icons could not be located"}
        else
            render json: IconSerializer.new(icons)
        end
        
    end

    private

    def icon_params
        params.require(:icon).permit(:board_id, :title, :id)
    end

    def body_params
        params.require(:body).permit(:icon_id, :description, :body_type, :image, :id)
    end
end
