class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(*)
    if current_user.profile.nil?
      new_profile_path
    else
      root_path
    end
  end
end
