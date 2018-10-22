class MessagesController < ApplicationController
  before_action :find_message, only: [:show]

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.create(message_params)
    render json: @message
  end

  # def create
  #   @message = Message.new(message_params)
  #   group = Group.find(message_params[:group_id])
  #   if @message.save
  #     serialized_data = ActiveModelSerializers::Adapter::Json.new(
  #       MessageSerializer.new(@message)
  #     ).serializable_hash
  #     MessagesChannel.broadcast_to group, serialized_data
  #     head :ok
  #   end
  # end

  def show
    render json: @message
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :group_id, :text)
  end

  def find_message
    @message = Message.find(params[:id])
  end
end
