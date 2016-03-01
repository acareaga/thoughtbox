class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  require 'uri'

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def valid(url)
    uri = URI.parse(url)
    uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
    false
  end
end
