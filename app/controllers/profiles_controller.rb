require "open-uri"
class ProfilesController < ApplicationController

  def index
    @user = current_user
    @profile = @user.profile
  end

  def new
    # user_one_photo_file = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742813684/development/r9patyczsmcryvu4uq3c9ib5czal.jpg").open
    @profile = Profile.new
    # @profile.photo.attach(io: user_one_photo_file, filename: "nopic", content_type: "image/png")
  end

  def create
    @profile = Profile.new(set_params)
    @profile.user = current_user
    if @profile.save!
      redirect_to profiles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user = current_user
    @profile = @user.profile
    if @profile.update(set_params)
      redirect_to profiles_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:profile).permit(:photo, :document, :first_name, :last_name, :dob, :address, language_ids: [])
  end
end
