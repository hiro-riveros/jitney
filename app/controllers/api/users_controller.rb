module Api
  class UsersController < Api::ApiController
    respond_to :json
    before_action :set_user, only: [:show , :update , :destroy]

    def show
      if @user
        respond_with(@user)
      else
        respond_with(@user)
      end
    end

    def create
      @user = Passenger.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
      if @user.save
        respond_with(@user)
      else
        respond_with(@user)
      end       
    end

    ## TO-DO ADD ALL PARAMETERS IN UPDATE METHOD
    def update
      @user = User.update(params[:id], :email => params[:email], :password => params[:password], :password_confirmation => params[:password_confirmation], :name => params[:name], :last_name => params[:last_name])
      if @user.save
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