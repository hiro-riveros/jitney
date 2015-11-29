module Api
  class JitneysController < Api::ApiController
      before_action :set_jitney, only: [:show , :update , :destroy]

      def index
        @jitneys = Jitney.all
        if @jitneys
          respond_with(@jitneys)
        else
          respond_with(@jitneys)
        end
      end

      def show
        if @jitney
          respond_with(@jitney)
        else
          respond_with(@jitney)
        end
      end

      def create
        @jitney = Jitney.new(email: params['email'], password: params['password'], password_confirmation: params['password_confirmation'])
        @jitney.skip_confirmation!
        if @jitney.save
          respond_with(@jitney)
        else
          respond_with(@jitney)
        end       
      end

      def update
        @jitney = Jitney.update(params[:id], :automatic_map => params[:automatic_map])
        if @jitney.save
          respond_with(@jitney)
        else
          respond_with(@jitney)
        end 
      end

      def destroy
        if @jitney.destroy
          respond_with(@jitney)
        else
          respond_with(@jitney)
        end
      end

      private
        def set_jitney
          @jitney = Jitney.find(params[:id])
        end
  end
end