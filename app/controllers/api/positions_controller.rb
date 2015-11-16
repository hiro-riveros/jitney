module Api
	class PositionsController < Api::ApiController
		before_filter :set_position, only: [:show]

		def show
			if @position
				respond_with(@position)
			else
				respond_with(@position)
			end
		end

		## TO-DO CREATE POSITION USING PASSENGER OR JITNEY MODEL
		def create
			@position = Position.new(params[:user_id], params[:latitude], params[:longitude], params[:petimeter])
			if @position.save
				respond_with(@position)
			else
				respond_with(@position)
		end
		
		## TO-DO UUPDATE POSITION USING PASSENGER OR JITNEY MODEL
		def update
			if @position.update(params)
				respond_with(@position)
			else
				respond_with(@position)
			end
		end

		private
		def set_position
			@position = Position.find(params[:id]) if params[:id]
		end
	end
end