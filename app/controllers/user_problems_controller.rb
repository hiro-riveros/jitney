class UserProblemsController < ApplicationController
	def index
		if current_user.account_type == 1
			@user_problems = UserProblem.all
		else	
			@user_problems = UserProblem.where("user_id = #{current_user.id}") 
		end
	end

	def create
		@user_problem = UserProblem.new
		@user_problem.type_of_problem = params['user_problem']['type_of_problem']
		@user_problem.problem = params['user_problem'][:problem]
		@user_problem.phone = params['user_problem'][:phone]
		@user_problem.user_id = current_user.id
		@user_problem.save

		redirect_to user_problems_path
	end

	def new
		@up = UserProblem.new
	end

	def update
		
	end

	def destroy
		user_problem = UserProblem.find(params[:id])
		user_problem.delete

		redirect_to user_problems_path
	end
end