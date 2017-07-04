class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user.pass == params[:session][:pass]
      redirect_to @user
    else
      flash[:notice] = '残念ながらログインに失敗しますた'
      redirect_to '/login'
    end
  end

  def destroy
    @_current_user = nil
    reset_session
    redirect_to root_url
  end
end
