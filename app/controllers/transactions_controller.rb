class TransactionsController < ApplicationController
	def new
		@transaction = Transaction.where("user_id=#{current_user.id}")
		#raise @transaction.inspect
		if @transaction.blank?
			@transaction = Transaction.new
		else
			redirect_to root_path
		end
	end

	def create
		@transaction = Transaction.new
		@transaction.user_id = current_user.id
		@transaction.product_id = params[:product_id]
		@transaction.amount = 5000
		@transaction.response_status = '200'
		@transaction.response_comment = 'completada con observaciones'
		@transaction.client_token = 'asWdasd@asd14qe1e'
		@transaction.bank_name = params[:bank_name]
		@transaction.transaction_type = params[:transaction_type]
		@transaction.save

		redirect_to "/documents/new"
	end
end
