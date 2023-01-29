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
      flash.now[:notice] = 'Room created!'
    else
      flash.now[:alert] = room.errors.full_messages
    end
    render_flash
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
