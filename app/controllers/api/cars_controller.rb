module Api
	class CarsController < ApplicationController
		respond_to :json
		before_filter :set_car, only: [:show, :update]

		def show
			if @car
				respond_with(@car)
			else
				respond_with(@car)
			end
		end

		def create
			@car = Car.new(jitney_id: params[:jitney_id], patent: params[:patent], model: params[:model], route: params[:route], passengers: params[:passengers])
			if @car.save
				respond_with(@car)
			else
				respond_with(@car)
			end			
		end

		def update
			@car = Car.update(params[:id], :passengers => params[:passengers].to_i)
			if @car.save
				respond_with(@car)
			else
				respond_with(@car)
			end			
		end

		private
		def set_car
			@car = Car.find(params[:id]) if params[:id]
		end
	end
end