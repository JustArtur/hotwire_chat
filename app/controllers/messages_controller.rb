class MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])
  end

  def create
    message = Message.new(message_params)
    if message.save
      flash[:notice] = "#{message.room.name} #{message.text}"
    else
      flash.now[:alert] = 'Message not sent!Try again.'
    end
    render_flash
  end

  private
  def message_params
    params.require(:message).permit(:text, :room_id)
  end
end
