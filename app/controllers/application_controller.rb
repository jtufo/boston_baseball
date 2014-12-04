class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :franchise, :league, :city, :state, :phone, :birthdate, :age_group, :primary_position, :secondary_position, :bats, :throws, :playing_experience, :last_played) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :franchise, :league, :city, :state, :phone, :birthdate, :age_group, :primary_position, :secondary_position, :bats, :throws, :playing_experience, :last_played) }
    end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User)
      edit_user_registration_path
    else
      admin_users_index_path
    end
  end
end
