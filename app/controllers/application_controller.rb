class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def require_log_in!
    redirect_to new_session_path unless logged_in?
  end
end
