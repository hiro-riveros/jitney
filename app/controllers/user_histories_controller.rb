class UserHistoriesController < ApplicationController
	def index
		@user_histories = UserHistory.where("user_id = #{current_user.id}").last(100)
	end

	def show
		@user_histories = UserHistory.where("user_id = #{params[:id]}").last(100)
	end
end