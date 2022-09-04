class Admin::UsersController < ApplicationController
     
  def index
    # @users = User.page(params[:page]).per(10)
    @users = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :kana_name, :user_name,:introduction,:is_deleted)
  end
end
