class Api::UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(current_user.id)
      render "show.json.jb"
    else
      render json: { message: "You must log in first" }
    end

    def create
      user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation],
      )

      if user.save
        render json: { message: "User created successfully" }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
    end
  end
end
