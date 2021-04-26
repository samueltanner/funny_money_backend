class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
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
