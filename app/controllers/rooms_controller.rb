class RoomsController < ApplicationController
  def index
    @rooms = Room.all.order(created_at: :desc)
  end

  def new
    @room = Room.new
  end
  
  def create
    room = Room.new(room_params)
    if room.save
      set_flash_message :notice, 'Room created!'
    else
      set_flash_message :alert, room.errors.full_messages
    end
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.sort_by(&:created_at)
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
end
