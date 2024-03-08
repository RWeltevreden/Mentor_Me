class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    # @chatroom = Chatroom.call(connection.chatroom)
    @message = Message.new
  end
end
