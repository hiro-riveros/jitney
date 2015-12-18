class RegistrationsController < Devise::RegistrationsController

	def new
		super
	end

	def create
		
		@user = Passenger.new(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    	if @user.save
    		if @user.active_for_authentication?
    			#respond_with @user, location: after_sign_up_path_for(@user)
    			#sign_in(@user, :bypass => true)
    			#@user.skip_reconfirmation!
    			#binding.pry
        		sign_in(:user, @user.acting_as)
        		redirect_to "/profile/#{@user.acting_as.id}", notice: 'Your profile was successfully updated.'
    		end
    	end
	end

	def update
		super
	end
end