class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def current_user
   User.where(id: session[:user_id]).first
  end
    helper_method :current_user
end
