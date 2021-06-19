class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def validates_user_admin
    redirect_back(fallback_location: root_path) unless current_user.admin?
  end
end
