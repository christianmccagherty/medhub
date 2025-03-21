class ProfilesController < ApplicationController

  def index
    @user = current_user
    @profile = @user.profile
  end

  def create
    raise
  end

  def update
    @user = current_user
    @profile = @user.profile
    @profile.update(set_params)
    redirect_to profiles_path
  end

  private

  def set_params
    params.require(:profile).permit(:photo, :document)
  end
end
