class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter :authenticate

  private
  def authenticate
    @current_user = User.first
  end

end
