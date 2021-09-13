class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_parmitted_parameters
    devise_params_sanitizer.permit(:sign_up, keys: [:name])
  end
end
