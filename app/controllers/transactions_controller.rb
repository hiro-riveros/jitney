class TransactionsController < ApplicationController
	def new
		@transation = Transaction.new
	end

	def create
		@transation = Transaction.new
		#@transation = params[]
	end
end
