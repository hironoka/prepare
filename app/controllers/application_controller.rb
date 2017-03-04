class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :success, :info, :warning, :danger
end

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:uid, :provider, :first_name, :last_name, :gender, :birthday])
  devise_parameter_sanitizer.permit(:account_update, keys: [:uid, :provider, :first_name, :last_name, :gender, :birthday])
end
