class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @review = Review.new
    @reviews = @doctor.reviews
  end
end
