class MessagesController < ApplicationController
  # render a list of the last 10 messages from the Message.all
  def index
      messages = Message.all.last(10)
      render json: messages
  end
  
  def show
      message = Message.find_by(id: params[:id]).last(10)
      if (message)
          render json: message
      else
          render json: { message: 'Quiz not found.'}
      end
  end

# find a user with the name "message_params[:user]" and then create a message for that user
  def create
      user = User.find_by(name: message_params[:user])
      message = Message.create(user_id: user.id, message: message_params[:message])
      if message.save
          newMessages = Message.all.last(10)
          render json: newMessages
      else
          render json: { message: "Something went wrong." }
      end
  end

  private
  def message_params
      params.permit(:user, :message)
  end
end
