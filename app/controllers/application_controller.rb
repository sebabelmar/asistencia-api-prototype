class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :authenticate_request

  attr_reader :current_user

  private

  def authenticate_request
    current_user = AuthorizeApiRequest.call(request.headers).result

    if current_user
      @current_user
    else
      render json: {error: 'not authorized'}, status: 401
    end
  end
end
