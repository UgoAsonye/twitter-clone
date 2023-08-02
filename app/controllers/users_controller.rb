class UsersController < ApplicationController
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      image: params[:image],
    )
    if @user.save
      render json: { message: "User has been created!" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all
    render :index
  end
end
