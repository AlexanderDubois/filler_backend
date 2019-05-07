class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save
      token = encode_token(user.id)

      render json: {user: user, token: token, status: 200}
    else
      render json: {
        error: "Could not signup user",
        status: 400
      }
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :profile_img)
  end

end
