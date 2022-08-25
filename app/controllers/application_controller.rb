class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def authenticate_user
      unless session[:user_id]
        redirect_to login_path,notice: "please login to acces this page"
      end
    end
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !!current_user
    end

    def require_user
        if !logged_in?
            redirect_to login_path , :notice => "You must be logged in to perform that action"
        end
      end
end
