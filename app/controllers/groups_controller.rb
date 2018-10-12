class GroupsController < ApplicationController
  before_action :find_group, only: [:show]

def index
  @groups = Group.all
  render json: @groups
end

def create
  @group = Group.create(group_params)
  render json: @group
end

def show
  render json: @group
end

private

def group_params
  params.require(:group).permit(:name, :next_meeting, :current_book)
end

def find_group
  @group = Group.find(params[:id])
end
end
