module Api
  class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user!, raise: false
    before_action :authenticate_token?

    respond_to :json
    def authenticate_token?
      authenticate_or_request_with_http_token do |token, options|
        @current_user = User.where(token: token).first
        !! @current_user
      end
    end
  end
end