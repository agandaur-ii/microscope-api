class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        user = User.create(user_params)
        if user.valid?
            render json: { user: UserSerializer.new(user), jwt: @token}, status: :created
        else
            render json: {error: 'failed to create new user'}, status: :not_acceptable
        end
    end

    def destroy
        user = User.find(params[:id])
        if user 
            user.destroy
            render json: {message: "User deleted"}
        else
            render json: {message: "User's account could not be located"}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid? 
            render json: UserSerializer.new(user)
        else
            render json: {message: user.errors.full_messages}
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :password, :id)
        end
end
