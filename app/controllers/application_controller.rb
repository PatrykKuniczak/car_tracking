class ApplicationController < ActionController::Base
  before_action :restrict_access, :ensure_user_data_exists

  private

  def restrict_access
    unless user_signed_in?
      allowed_paths = [ new_user_registration_path, new_user_session_path, user_session_path, user_registration_path, root_path ]

      unless allowed_paths.include?(request.path)
        redirect_to new_user_session_path, alert: "You must sign in to access this page."
      end
    end
  end

  def ensure_user_data_exists
    if user_signed_in? && !current_user.user_data && request.path != user_data_form_path
        redirect_to user_data_form_path, alert: "Please complete your user data first."
    end
  end
end
