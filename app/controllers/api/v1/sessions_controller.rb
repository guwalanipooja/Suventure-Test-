module Api
  module V1
    class SessionsController < Api::V1::VersionController
      skip_before_action :authenticate_token?

      def create
        @user= User.find_for_authentication(email: params[:user][:email])
        if @user && @user.valid_password?(params[:user][:password])
          if @user.active_for_authentication?
            render "create"
          else
            head :forbidden
          end
        else
          head :forbidden
        end
      end

    end
  end
end
