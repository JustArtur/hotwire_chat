class MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])
  end

  def create
    message = Message.new(message_params)
    message.save
  end

  def message_params
    params.require(:message).permit(:text, :room_id)
  end
end
