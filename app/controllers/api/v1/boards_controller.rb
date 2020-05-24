class Api::V1::BoardsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end
    
    def create
        byebug
        board = Board.create(board_params)
        #logic for ancestry, if present
        render json: BoardSerializer.new(board)
    end

    def show 
        board = Board.find(params[:id])
        render json: BoardSerializer.new(board)
    end

    def update 
        board = Board.find(params[:id])
        if params[:title] == "" && params[:background_img] == ""
            render json: BoardSerializer.new(board)

        elsif params[:title] == ""
            params[:board][:title] = board.title
            board.update(board_params)
            render json: BodySerializer.new(board)

        elsif params[:background_img] == ""
            params[:board][:background_img] = board.background_img
            board.update(board_params)
            render json: BoardSerializer.new(board)

        end
    end

    def destroy
        board = Board.find(params[:id])
        if board 
            board.destroy
            boards = Board.all
            render json: BoardSerializer.new(boards)
        else
            render json: {message: "Board could not be located"}
        end
    end

    private

    def board_params
        params.require(:board).permit(:user_id, :title, :background_img, :id)
    end
end
