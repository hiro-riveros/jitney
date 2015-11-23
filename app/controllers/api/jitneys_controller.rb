module Api
  class jitneysController < Api::ApiController
      before_action :set_jitney, only: [:show , :update , :destroy]

      def index
        @jitney = Jitney.all
        if @jitney
          respond_with(@jitney)
        else
          respond_with(@jitney)
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
        respond_to do |format|
          if @jitney.update(params)
            respond_with(@jitney)
          else
            respond_with(@jitney)
          end
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