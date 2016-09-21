class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :singlelogged_in?

  def singlelogged_in?
	session[:login]
  end

  private
  def authenticate
	login = authenticate_or_request_with_http_basic do |username, password|
	username == "username" && password == "password"
  end
	session[:login] = login
  end

  def do_logout
	session[:login] = nil
  end
end
