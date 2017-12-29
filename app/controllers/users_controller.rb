class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    user = User.new(user_params)

    if user
      user.save
      render json: {message: "user has been created"}
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      p "*************"
      p params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
