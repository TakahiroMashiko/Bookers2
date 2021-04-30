class BooksController < ApplicationController
  # ユーザがログインしていない場合、ログイン画面だけが表示される
  before_action :authenticate_user!
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    # 投稿処理の成功後、サクセスメッセージを表示
    if @book.save
      redirect_to book_path(@book), notice: "You have created book successfully."
    else
      @books=Book.all
      render 'index'
    end
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @newbook = Book.new
  end

  def edit
    @book = Book.find(params[:id])
    if @book.user == current_user
      render "edit"
    else
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    # 更新処理の成功後、サクセスメッセージを表示
    if @book.update(book_params)
      redirect_to book_path(@book), notice: "You have updated book successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    # 削除処理の成功後、サクセスメッセージを表示
    if @book.destroy
      redirect_to '/books', notice: "Book was successfully destroyed."
    end
  end

  # ストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end