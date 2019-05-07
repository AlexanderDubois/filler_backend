class AuthController < ApplicationController

    def login
        user = User.find_by(email: params[:email]) || User.find_by(username: params[:username])


        if user && user.authenticate(params[:password])

            token = encode_token(user.id)

            render json: {user: user, token: token}
        else
            render json: {
                error: "Could not log in user",
                status: 400
            }
        end
    end

    def signup
        user = User.new(
            username: params[:name],
            email: params[:email],
            profile_img: params[:profile_img],
            password: params[:password]
        )

        if user.save
            token = encode_token(user.id)

            render json: {user: user, token: token}
        else
            render json: {
                errors: user.errors.full_messages,
                status: 400
            }

        end

    end

end
