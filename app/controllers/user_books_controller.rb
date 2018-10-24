class UserBooksController < ApplicationController
  before_action :find_user_book, only: [:show, :destroy, :update]

  def index
    @user_books = UserBook.all
    render json: @user_books
  end

  def create
    @user_book = UserBook.create(user_book_params)
    render json: @user_book
  end

  def show
    render json: @user_book
  end

  def destroy
    render json: @user_book.destroy
  end

  private

  def user_book_params
    params.require(:user_book).permit(:user_id, :isbn, :title, :author, :image, :link, :description)
  end

  def find_user_book
    @user_book = UserBook.find(params[:id])
  end
end
