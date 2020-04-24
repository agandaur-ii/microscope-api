class Api::V1::BoardsController < ApplicationController
    def create
        board = Board.create(board_params)
        #logic for ancestry, if present

        render json: BoardSerializer.new(board)
    end

    def update 
        board = Board.find(params[:id])
        board.update(board_params)

        render json: BodySerializer.new(body)
    end

    private

    def board_params
        params.require(:board).permit(:user_id, :title, :backgroung_img)
    end
end
