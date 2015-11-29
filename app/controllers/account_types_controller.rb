class AccountTypesController < ApplicationController

	def index
		if current_user.account_type == 1
			@account_types = AccountType.all
		else
			redirect_to root_path
		end
	end

	def edit
		if current_user.account_type == 1
			@account_type = AccountType.find params[:id]
		else
			redirect_to root_path
		end
	end

	def create
		if current_user.account_type == 1
			@account_type = AccountType.new
			@account_type.name = params[:account_type][:name]
			@account_type.priviledges = params[:account_type][:priviledges]
			@account_type.description = params[:account_type][:description]
			@account_type.save
		else
			redirect_to root_path
		end
	end

	def new
		if current_user.account_type == 1
			@account_type = AccountType.new
		else
			redirect_to root_path
		end
	end

	def update
		if current_user.account_type == 1
			@account_type.name = params[:name]
			@account_type.priviledges = params[:priviledges]
			@account_type.description = params[:description]
			@account_type.save
		else
			redirect_to "/account_type"
		end
	end

	def destory
		if current_user.account_type == 1
			@account_type.destory

			redirect_to "account_type"
		else
			redirect_to root_path
		end
	end
end