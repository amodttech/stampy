class UsersController < ApplicationController

    before_action :authorized, only: [:show]

    def index
        users = User.all
        render json: users
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          render json: {
            status: :created,
            user: @user
          }
        else 
          @user.save
          render json: {
            status: 500,
            error: @user.errors.full_messages
          }
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :password_confirmation)
    end
end
