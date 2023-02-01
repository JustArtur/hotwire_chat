class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
        message.broadcast_prepend_to('notification', partial: 'layouts/notification', target: 'notification', locals: {room_name: message.room.name})
    end
  end

  private
  def message_params
    params.require(:message).permit(:text, :room_id)
  end
end
