class MessagesController < ApplicationController
  def indexByUsers
    @Users = [params[:user1], params[:user2]]
    @Messages = Message.where(
        sender_id: @Users,
        recipient_id: @Users
    )
    
    render json: @Messages
  end
end