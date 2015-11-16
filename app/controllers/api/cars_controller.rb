module Api
	class CarsController < ApplicationController
		before_filter :set_car, only: [:show]

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
			@car = Car.update(jitney_id: params[:jitney_id], patent: params[:patent], model: params[:model], route: params[:route], passengers: params[:passengers])
			if @car.save
				respond_with(@car)
			else
				respond_with(@car)
			end			
		end

		private
		def set_car
			@car = Cars.find(params[:id]) if params[:id]
		end
	end
end