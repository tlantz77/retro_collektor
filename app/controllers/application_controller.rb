class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def owner?
    current_user == @user
  end

  def authorize
    @user = User.find(params[:user_id])
    redirect_to unauthorized_path unless owner?
  end

  def auth_token
    "b98a18fd77634c27e96a5a697b00debc6b8fd4e6"
  end
  helper_method :auth_token

  protect_from_forgery with: :exception
end
