class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper

  private
   def current_user
     @_current_user ||= User.find_by(id:session[:user_id])
   end
end
