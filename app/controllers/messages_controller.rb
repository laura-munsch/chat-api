class MessagesController < ApplicationController
  def create
    @Message = Message.new(
      content: params[:content],
      sender_id: params[:sender_id],
      recipient_id: params[:recipient_id]
    )

    if @Message.save
      render json: @Message
    else
      render json: { errors: @Message.errors }, status: 422
    end
  end
  
  def indexByUsers
    @Users = [params[:user1], params[:user2]]
    @Messages = Message.where(
      sender_id: @Users,
      recipient_id: @Users
    )
    
    render json: @Messages
  end
end