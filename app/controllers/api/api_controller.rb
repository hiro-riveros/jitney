module Api
	class ApiController < ApplicationController
		#responde como json locoo!!
		respond_to :json
		protect_from_forgery with: :null_session


	end
end