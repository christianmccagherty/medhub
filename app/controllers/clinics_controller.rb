class ClinicsController < ApplicationController

  def show
    @clinic = Clinic.find(params[:id])
    @markers = [
      {
        lat: @clinic.latitude,
        lng: @clinic.longitude
      }
    ]
    @rating = average_rating(@clinic)
  end

  def index
    @clinics = Clinic.all
  end

  def test
    # this is only to test out designs, will be deleted later
    @clinic = Clinic.find(21)
  end

  private

  def average_rating(clinic)
    clinic_ratings = []
    doctors = Doctor.where(:clinic_id == clinic)
    doctors.each do |doctor|
      doctor_ratings = []
      reviews = Review.where(:doctor_id == doctor)
      reviews.map do |review|
        doctor_ratings << review.rating
      end
      clinic_ratings << (doctor_ratings.sum / doctor_ratings.length)
    end
    clinic_ratings.sum / clinic_ratings.length
  end
end
