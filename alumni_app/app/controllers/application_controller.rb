class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # user_signed_in?
  # current_user
  # user_session

  # helper_method :current_user

  # #returns nil if user is not logged in
  # def current_user
  #   User.where(id: session["user_id"]).first
  # end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).concat [:first_name, :last_name, :postal_code, :country, :program_attended, :campus, :cohort, :bio, :avatar]
  end
  
end
