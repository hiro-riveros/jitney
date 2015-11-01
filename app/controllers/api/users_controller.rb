module Api
  class UsersController < Api::ApiController
    before_action :set_user, only: [:show , :update , :destroy]

    def show
      #responde wn!
      if @user
        respond_with(@user)
      else
        respond_with('error')
      end
    end

    def create
      ##
      @user = User.new(:email => params[:email],
                 :password => params[:password],
                 :password_confirmation => params[:password_confirmation])
      if @user.save
        respond_with(@user)
      else
        respond_with(@user)
      end        
      # This will save the user in db with fields for devise
      #sign_in @user
      # :bypass is set to ignore devise related callbacks and only save the
      # user into session.
      #sign_in @user, :bypass => true
       
    end

    def update
      respond_to do |format|
        if @user.update(user_params)
          respond_with(@user)
        else
          respond_with(@user)
        end
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

      def user_params
        accessible = [:id, :name, :email, :age, :last_name, :slast_name ] # extend with your own params
        accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
        params.require(:user).permit(accessible)
      end
  end
end