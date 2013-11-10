class RoomsController < ApplicationController
	def new
	end

	def create
		@room = Room.new(room_params)
		@room.save
		redirect_to @room
	end

	def show
		@room = Room.find(params[:id])
	end
	def index
		@rooms = Room.all
	end
	private
		def room_params
			params.require(:room).permit(:title, :description)
		end
end
