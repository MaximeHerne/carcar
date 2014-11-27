class Learners::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :firs_name, :last_name, :date_of_birth, :phone, :address, :city, :zip, :country, :password) }
  devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :firs_name, :last_name, :date_of_birth, :phone, :address, :city, :zip, :country, :password) }
  end

  def after_sign_up_path_for(resource)
    learners_path
  end
end
