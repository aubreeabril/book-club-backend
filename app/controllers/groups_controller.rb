class GroupsController < ApplicationController
  before_action :find_group, only: [:show, :update]

def index
  @groups = Group.all
  render json: @groups
end

# def create
#   @group = Group.create(group_params)
#   render json: @group
# end

def create
  @group = Group.new(group_params)
  if @group.save
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      GroupSerializer.new(@group)
    ).serializable_hash
    ActionCable.server.broadcast 'groups_channel', serialized_data
    head :ok
  end
end

def show
  render json: @group
end

def update
  @group.update(group_params)
  render json: @group
end

private

def group_params
  params.require(:group).permit(:name, :next_meeting, :current_book, :vote_by)
end

def find_group
  @group = Group.find(params[:id])
end
end
