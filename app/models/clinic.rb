class Clinic < ApplicationRecord
  has_one_attached :photo
  has_many :doctors
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_clinic_rating
    return "unrated" if doctors.map(&:average_doctor_rating) == "unrated"
    return "unrated" if doctors.sum == 0
    rating = doctors.map(&:average_doctor_rating).sum / doctors.size
    rating == nil ? "unrated" : rating
  end
end
