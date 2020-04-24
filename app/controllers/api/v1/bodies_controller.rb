class Api::V1::BodiesController < ApplicationController
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

    private

    def body_params
        params.require(:body).permit(:icon_id, :type, :description, :content)
    end
end
