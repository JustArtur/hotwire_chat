class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def create
    room = Room.new(room_params)
    if room.save
      flash[:notice] = 'Room created!'
    else
      flash[:alert] = room.errors.full_messages
    end
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def room_params
    params.require(:room).permit(:name)
  end
end
