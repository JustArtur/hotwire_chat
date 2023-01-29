class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
        message.broadcast_append_to('notification', target: 'notification', partial: 'layouts/notification', locals: {room_name: message.room.name})
    end
  end

  private
  def message_params
    params.require(:message).permit(:text, :room_id)
  end
end
