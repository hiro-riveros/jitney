class DocumentsController < ApplicationController
	def index
		if current_user.account_type == 1
			@documents = Document.where("status = 'enviado'")
		else
			@documents = Document.where("user_id = #{current_user.id} and status = 'enviado'")
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
		au = User.find params[:document][:user_id]
		u = au
		#binding.pry
		au.destroy

		@document = Document.find params[:document][:id]
		@document.status = params[:status]
		@document.save
		#binding.pry
		if @document.status == 'Aprobado'
			jitney = Jitney.create!(email: u.email, password: u.pass, password_confirmation: u.pass, name: u.name, age: u.age, last_name: u.last_name, slast_name: u.slast_name, automatic_map: true, account_type: 3)

			@documents = Document.where(user_id: u.id)
			@documents.each do |document|
				document.user_id = jitney.acting_as.id
				document.save
			end

			@problems = UserProblem.where(user_id: u.id)
			@problems.each do |pro|
				pro.user_id = jitney.acting_as.id
				pro.save
			end

			@uh = UserHistory.where(user_id: u.id)
			@uh.each do |uhis|
				uhis.user_id = jitney.acting_as.id
				uhis.save
			end

			tr = Transaction.where(user_id: u.id)
			tr.each do |trans|
				trans.user_id = jitney.acting_as.id
				trans.save
			end

			iden = Identity.where(user_id: u.id)
			iden.each do |ids|
				ids.user_id = jitney.acting_as.id
				ids.save
			end
			u.specific.destroy

			#@user.account_type = 3
			#@user.actable_type = "Jitney"
			#@user.save
			#TODO
			#@jitney = Jitney.new

		end



		redirect_to "/documents"
	end
end