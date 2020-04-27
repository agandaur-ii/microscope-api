class Api::V1::BoardsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end
    
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

    def destroy
        board = Board.find(params[:id])
        if board 
            board.destroy
            render json: {message: "Board deleted"}
        else
            render json: {message: "Board could not be located"}
        end
    end

    private

    def board_params
        params.require(:board).permit(:user_id, :title, :backgroung_img)
    end
end
