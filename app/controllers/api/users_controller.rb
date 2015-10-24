module Api
	class UsersController < Api::ApiController
		before_action :find_user, only: [:show , :update , :delete]

		def show
			#responde wn!
			respond_with(@user)
		end

		def create

		end

		def update

		end

		def delete

		end

		private

		def find_user
			@user = User.find(params[:id])
		end
	end
end