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
