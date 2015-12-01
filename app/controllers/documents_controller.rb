class DocumentsController < ApplicationController
	def index
		if current_user.account_type == 1
			@documents = Document.all
		else
			@documents = Document.where("user_id = #{current_user.id}")
		end
	end

	def new
		@document = Document.new
	end

	def create
		#raise params.inspect
		@document = Document.new
		@document.name = params[:document][:name]
		@document.coment = params[:document][:coment]
		

		uploaded_io = params[:document][:picture]
		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
			#raise file.inspect
		  file.write(uploaded_io.read)
		end
		@document.path = uploaded_io.original_filename
		@document.status = "enviado"
		@document.user_id = current_user.id
		@document.save

		redirect_to root_path
	end

	def edit
		@document = Document.find params[:id]
		#raise @document.inspect
	end

	def show
		@document = Document.find params[:id]
	end

	def update
		#raise params.inspect
		@document = Document.find params[:document][:id]
		@document.status = params[:status]
		@document.save

		@user = User.find params[:document][:user_id]
		@user.account_type = 3
		@user.actable_type = "Jitney"
		@user.save
		#TODO
		#@jitney = Jitney.new


		redirect_to "/documents"
	end
end