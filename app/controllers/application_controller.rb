class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :profile_completed?, :my_businesses, :user_businesses

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_profile

  protected

  def check_profile
    return unless user_signed_in?
    redirect_to new_user_profile_path unless profile_completed?
  end

  def profile_completed?
    current_user.user_profile.present?
  end

  def my_businesses
    current_user.business_profiles if current_user.present?
  end

  def user_businesses
    profile_owner.business_profiles
  end

  def profile_owner
    @user_profile.user
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :email
  end
end
