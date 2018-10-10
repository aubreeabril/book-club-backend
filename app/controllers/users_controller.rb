class UsersController < ApplicationController
  before_action :find_user, only: [:show]
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(:user_params)
    render json: @user
  end

  def show
    render json: @user
  end

  private

  def user_params
    params.permit(:name, :email, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
