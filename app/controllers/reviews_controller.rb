class ReviewsController < ApplicationController
  def create
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.doctor = @doctor
    if @review.save
      redirect_to doctor_path(@doctor)
    else
      render "doctors/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
