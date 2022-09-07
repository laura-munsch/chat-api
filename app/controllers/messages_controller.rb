class MessagesController < ApplicationController
  def index
    @Messages = User.find(params[:user_id]).messages
    
    render json: @Messages
  end
end