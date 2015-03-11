class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  user_signed_in?
  current_user
  user_session

  helper_method :current_user

  #returns nil if user is not logged in
  def current_user
    User.where(id: session["user_id"]).first
  end
  
end
