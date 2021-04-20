class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @book = @user.page(params[:page]).reverse_order
  end

  def index
  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to books_path(@user.id)
  end

# ストロングパラメータを設定
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
