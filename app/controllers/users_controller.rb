class UsersController < ApplicationController
  before_action :authorized, only: [:show]

  def show
    render json: @current_user, status: 200
  end

  # SIGNUP
  def create
    @user = User.new(username: user_params[:username], password: user_params[:password])

    if @user.save
      token = encode_token({ user_id: @user.id })
      render json: { status: :created, user: user_data(@user), token: token }, status: 201
    else
      render json: { errorMsgs: @user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :user_id)
  end

  def user_data(user)
    {
      id: user.id,
      username: user.username,
      admin: user.admin
    }
  end
end
