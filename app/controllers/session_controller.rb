class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
     log_in user
     redirect_to user
    else
     flash[:danger] = 'Invalid email/password combination' 
     render 'new'
    end
  end

  def destroy
  end
end
