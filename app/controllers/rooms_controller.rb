class RoomsController < ApplicationController
  def new
    @room = Room.new
    render new_room_path
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids:[])
  end
end
