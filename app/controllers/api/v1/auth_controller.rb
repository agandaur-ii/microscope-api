class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
        else
            render json: {error: 'Bad login information. Usernames are case sensitive.'}, status: :unauthorized
        end
    end

    def show
        user = User.find_by(id: current_user.id)
        if logged_in?
            render json: { id: user.id, username: user.username, firstname: user.first_name }
        else
            render json: {error: 'No user could be found'}, status: 401
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end
end  