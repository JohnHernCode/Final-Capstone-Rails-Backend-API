# frozen_string_literal: true

# Auto Login Controller
class AutoLoginController < ApplicationController
  def create
    user_id = decoded_token[0]['user_id']
    @user = User.find_by(id: user_id)

    if @user
      render json: { logged_in: true, user: user_data(@user) }
    else
      render json: { error: 'Incorrect Token' }, status: 401
    end
  end

  private

  def user_data(user)
    {
      id: user.id,
      username: user.username,
      admin: user.admin
    }
  end
end
