class ApplicationController < ActionController::Base
  def after_sign_in_path_for(user)
    user_path(user)
  end

  protect_from_forgery with: :exception

  before_action :authenticate_user!
end
