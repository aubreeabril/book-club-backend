class VotesController < ApplicationController
  before_action :find_vote, only: [:show]

  def index
    @votes = Vote.all
    render json: @votes
  end

  def create
    @vote = Vote.create(vote_params)
    render json: @vote
  end

  def show
    render json: @vote
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :group_book_id)
  end

  def find_vote
    @vote = Vote.find(params[:id])
  end
end
