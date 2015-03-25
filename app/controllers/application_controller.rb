class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
  

  def configure_permitted_parameters 
    devise_parameter_sanitizer.for(:sign_up) do |u| 
      u.permit(:name, :password, :address, :email, :password_confirmation, pledge_attributes:[:amount, :frequency, :startdate])
    end 
  end 

end
