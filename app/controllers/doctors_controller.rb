class DoctorsController < ApplicationController
  def index
    redirect_to search_path(search_type: 'doctors')
  end

  def show
    @doctor = Doctor.find(params[:id])
    @review = Review.new
    @reviews = @doctor.reviews

    @available_time_slots = @doctor.generate_available_slots
  end
end
