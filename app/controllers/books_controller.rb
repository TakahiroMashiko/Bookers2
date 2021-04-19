class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def create
    book = book.new(book_params)
    book.save
    redirect_to user_path(resource)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
