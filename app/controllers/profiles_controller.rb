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
    raise
  end

  private

  def set_params
    params.require(:profile).permit(:document)
  end
end
