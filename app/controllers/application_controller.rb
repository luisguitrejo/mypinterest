class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


#Hacer que obtenga parametros fuertes, como el telefono
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :phone)}
  end

end
