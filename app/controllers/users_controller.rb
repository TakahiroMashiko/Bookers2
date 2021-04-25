class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # 更新処理の成功後、サクセスメッセージを表示
    if @user.update(user_params)
      redirect_to user_path(current_user.id), notice: "You have updated user successfully."
    else
      render 'edit'
    end
  end

# ストロングパラメータを設定
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
