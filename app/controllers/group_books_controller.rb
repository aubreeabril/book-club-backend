class GroupBooksController < ApplicationController
  before_action :find_group_book, only: [:show, :destroy, :update]

  def index
    @group_books = GroupBook.all
    render json: @group_books
  end

  def create
    @group_book = GroupBook.create(group_book_params)
    render json: @group_book
  end

  def show
    render json: @group_book
  end

  def update
    @group_book.update(group_book_params)
    render json: @group_book
  end

  def destroy
    render json: @group_book.destroy
  end

  private

  def group_book_params
    params.require(:group_book).permit(:group_id, :isbn, :title, :author, :image, :link, :description, :read)
  end

  def find_group_book
    @group_book = GroupBook.find(params[:id])
  end
end
