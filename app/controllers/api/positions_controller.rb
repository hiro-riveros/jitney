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

		def create
			@position = Position.new(user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude], perimeter: params[:perimeter])
			if @position.save
				@user_history = UserHistory.new(user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude], order: 0)
				if @user_history.save
					respond_with(@position)
				end
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