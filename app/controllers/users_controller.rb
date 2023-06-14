class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def show
    @user = User.find(params[:id])
    @comics = @user.comics
  end

  def edit
    redirect_to root_path unless current_user == @user
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if current_user == @user
      @user.destroy
      redirect_to root_path, notice: 'ユーザーと関連するコミックとコメントを削除しました。'
    else
      redirect_to root_path, alert: '権限がありません。'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end