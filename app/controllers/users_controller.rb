class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
  end
  def new
   @user = User.new
  end
  def create
   @user = User.new(user_params)
    if @user.save
       flash[:notice] = "新規登録がかんりょうしました。新しく作ったアカウントでろぐいんしてね"
      redirect_to '/home'
    else
      render 'new'
    end
  end
   private
    def user_params
      params.require(:user).permit(:name, :email, :pass)
    end
end
