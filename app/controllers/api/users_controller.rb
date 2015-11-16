module Api
  class UsersController < Api::ApiController
    before_action :set_user, only: [:show , :update , :destroy]

    def show
      if @user
        respond_with(@user)
      else
        respond_with(@user)
      end
    end

    def create
      @user = User.new(email: params['email'], password: params['password'], password_confirmation: params['password_confirmation'])
      @user.skip_confirmation!
      if @user.save
        respond_with(@user)
      else
        respond_with(@user)
      end       
    end

    ## TO-DO ADD ALL PARAMETERS IN UPDATE METHOD
    def update
      if @user.update(params)
        respond_with(@user)
      else
        respond_with(@user)
      end
    end

    def destroy
      if @user.destroy
        respond_with(@user)
      else
        respond_with(@user)
      end
    end

    private
      def set_user
        @user = User.find(params[:id])
      end
  end
end