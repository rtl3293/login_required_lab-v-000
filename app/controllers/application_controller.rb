class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def logged_in?
    redirect_to sessions_login_path if !session.include? :name
  end

  def current_user
    session[:name]
  end
end
