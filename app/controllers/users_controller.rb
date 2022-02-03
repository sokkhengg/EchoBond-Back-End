class UsersController < ApplicationController

  before_action :authorized, only: [:auto_login]

   # register a new user
   def create
      @user = User.create!(:username=>params[:username], :password=>params[:password], :first_name=>params[:first_name], :last_name=>params[:last_name])
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password"}
      end
    end

    # log in as an existing user
    def login
      @user = User.find_by(username: params[:username])
  
      if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password!"}, status: :unprocessable_entity
      end
    end

    def auto_login
      render json: @user
    end

    private

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name)
    end

end
