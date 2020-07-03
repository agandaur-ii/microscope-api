class Api::V1::BodiesController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        bodies = Body.all
        render json: BodySerializer.new(bodies)
    end


    #remove above when ready^^
    def create
        body = Body.create(body_params)
        #logic for ancestry, if present

        render json: BodySerializer.new(body)
    end

    def update
        body = Body.find(params[:id])
        body.update(body_params)

        render json: BodySerializer.new(body)
    end

    def destroy
        body = Body.find(params[:id])
        if body 
            body.destroy
            render json: {message: "Body deleted"}
        else
            render json: {message: "Body could not be located"}
        end
    end

    private

    def body_params
        params.require(:body).permit(:icon_id, :type, :description, :content)
    end
end
