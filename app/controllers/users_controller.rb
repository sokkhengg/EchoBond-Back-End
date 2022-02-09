# class UsersController < ApplicationController

#   before_action :authorized, only: [:auto_login]

#    # register a new user
#    def create
#       @user = User.create!(:username=>params[:username], :password=>params[:password], :first_name=>params[:first_name], :last_name=>params[:last_name])
#       if @user.valid?
#         token = encode_token({user_id: @user.id})
#         render json: {user: @user, token: token}
#       else
#         render json: {error: "Invalid username or password"}
#       end
#     end

#     # log in as an existing user
#     def login
#       @user = User.find_by(username: params[:username])
  
#       if @user && @user.authenticate(params[:password])
#         token = encode_token({user_id: @user.id})
#         render json: {user: @user, token: token}
#       else
#         render json: {error: "Invalid username or password!"}, status: :unprocessable_entity
#       end
#     end

#     def auto_login
#       render json: @user
#     end

#     private

#     def user_params
#       params.require(:user).permit(:username, :password, :first_name, :last_name)
#     end

# end

class UsersController < ApplicationController
  #skip_before_action :authorized, only: [:create, :login]
  #before_action :authorized, only: [:auto_login]

  def index
      users = User.all
      render json: users
  end

  def show
      user = User.find_by(id: params[:id])
      if (user)
          render json: user
      else
          render json: { message: 'User not found.'}
      end
  end

  def create
      @user = User.create(name: user_params[:name], password: user_params[:password], email: user_params[:email], user_type: user_params[:user_type])
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: @user, jwt: @token }
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
  end

  def login
      @user = User.find_by(name: params[:name])

      if @user && @user.authenticate(params[:password])
          token = encode_token({user_id: @user.id})
          render json: { user: @user, jwt: token }
      else
          render json: {error: "Sorry, we couldn't find an account with those credentials. Please try again."}
      end
  end

  def auto_login
      render json: @user
  end

  private
  def user_params
      params.permit(:name, :password, :email, :user_type)
  end
end

# - The code creates a new user with the given parameters. - If the user is valid, it creates a token and renders that to JSON. - Otherwise, it renders an error message and status code of :not_acceptable
# - The code creates a new user and returns the newly created user's id. - The code above uses the encode_token method to create a JWT token with the user's ID.

# - The code starts by finding a user with the name "John" using the User.find_by method. - If that user exists, it will then check to see if they have an account and if so, it will encode their token into JSON and return it as well as the user object. - Otherwise, it will render an error message saying that there was no such account found for those credentials. - The code starts by finding a user with the name "John" using the User.find_by method. - If that user exists, it will then check to see if they have an account and if so, it will encode their token into JSON and return it as well as the user object. - Otherwise, it will render an error message saying that there was no such account found for those credentials.
# - The code is the beginning of a controller action that renders a JSON response with an object containing the user's id and jwt token. - The code below is the end of the controller action.