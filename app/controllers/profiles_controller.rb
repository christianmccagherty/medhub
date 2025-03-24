class ProfilesController < ApplicationController

  def index
    @user = current_user
    @profile = @user.profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @user = current_user
    @profile = Profile.new(set_params)
    @profile.user = @user
    @profile.save!
    # @user.profile = @profile
  end

  def update
    @user = current_user
    @profile = @user.profile
    @profile.update(set_params)
    redirect_to profiles_path
  end

  private

  def set_params
    params.require(:profile).permit(:photo, :document, :first_name, :last_name, :dob, :address)
  end
end
