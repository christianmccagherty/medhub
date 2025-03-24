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
    redirect_to search_path(search_type: 'clinics')
  end

  def test
    # this is only to test out designs, will be deleted later
    @clinic = Clinic.find(21)
  end

  private

  def average_rating(clinic)
    clinic_ratings = []
    doctors = Doctor.where(clinic_id: clinic.id)

    doctors.each do |doctor|
      doctor_ratings = collect_doctor_ratings(doctor)
      clinic_ratings << calculate_average(doctor_ratings) unless doctor_ratings.empty?
    end

    clinic_ratings.empty? ? "unrated" : calculate_average(clinic_ratings)
  end

  def collect_doctor_ratings(doctor)
    Review.where(doctor_id: doctor.id).pluck(:rating)
  end

  def calculate_average(ratings)
    ratings.sum.to_f / ratings.length
  end
end
