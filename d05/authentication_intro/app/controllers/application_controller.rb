class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :authorize

  # a method that will return who is currently logged in
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # this means "return curent_user, but if there is not a current user, set it to the user_id"
  end

  # this is considered a helper method that we will use to tell whether or not someone is currently logged in
  # this will be useful when telling th site what info to show because if a user is logged in, show a logout button
  # but if not, show a sign in button
  def logged_in? #using a '?' just tells you that this will return a method
    !!current_user # this turns the current_user method into a boolean
  end

  def authorize
    redirect_to new_session_path unless logged_in?
  end

end
