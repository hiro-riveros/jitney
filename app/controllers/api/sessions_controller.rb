# -*- encoding : utf-8 -*-
# app/controllers/sessions_controller.rb
module Api
  class SessionsController < Devise::SessionsController

    # This controller provides a JSON version of the Devise::SessionsController and
    # is compatible with the use of SimpleTokenAuthentication.
    # See https://github.com/gonzalo-bulnes/simple_token_authentication/issues/27
    #binding.pry
    def create
      #raise params.inspect
      # Fetch params
      email = params[:email] if params[:email]
      password = params[:password] if params[:password]

      id = User.find_by(email: email).try(:id) if email.presence

      # Validations
      if request.format != :json
        render status: 406, json: { message: 'The request must be JSON.' }
        return
      end

      if email.nil? or password.nil?
        render status: 400, json: { message: 'The request MUST contain the user email and password.' }
        return
      end

      # Authentication
      user = User.find_by(email: email)

      if user
        if user.valid_password? password
          user.authentication_token = nil
          user.is_active = true
          # Note that the data which should be returned depends heavily of the API client needs.
          user.authentication_token ||= Devise.friendly_token
          user.save if user.authentication_token_changed?
          @user = user
        else
          render status: 401, json: { message: 'Invalid email or password.' }
        end
      else
        render status: 401, json: { message: 'Invalid email or password.' }
      end
    end

    def destroy
      # Fetch params
      user = User.find_by(authentication_token: params[:authentication_token])

      if user.nil?
        render status: 404, json: { message: 'Invalid token.' }
      else
        binding.pry
        user.authentication_token = nil
        user.is_active = false
        user.save!
        render status: 204, json: nil
      end
    end
  end
end