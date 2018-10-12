class UserGroupsController < ApplicationController
  before_action :find_user_group, only: [:show]

  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def create
    @user_group = UserGroup.create(user_group_params)
    render json: @user_group
  end

  def show
    render json: @user_group
  end

  private

  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

  def find_user_group
    @user_group = UserGroup.find(params[:id])
  end
end
