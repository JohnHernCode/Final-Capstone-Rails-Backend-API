# frozen_string_literal: true

# Login Controller
class LoginController < ApplicationController
  def create
    @user = User.find_by(username: user_params[:username])

    if @user&.authenticate(user_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { logged_in: true, user: user_data(@user), token: token }
    else
      render json: { error: 'Incorrect Login' }, status: 401
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

  def user_data(user)
    {
      id: user.id,
      username: user.username,
      admin: user.admin
    }
  end
end
