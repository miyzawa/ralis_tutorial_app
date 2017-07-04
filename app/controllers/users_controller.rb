class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
   @tweet = Tweet.new
   @user.tweets.build
  end

  def update
      if @user.update(user_params)
        flash[:notice] = "書き込んだお（＾ω＾）"
        redirect_to @user
      else
        flash[:notice] = "なんか失敗しました。さーせん"
        redirect_to @user
      end
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
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :pass,
                                   tweets_attributes: [:title, :content])
    end
end
