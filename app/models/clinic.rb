class Clinic < ApplicationRecord
  has_one_attached :photo
  has_many :doctors
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_clinic_rating
    return "unrated" if doctors.map(&:average_doctor_rating).include?("unrated")
    return "unrated" if doctors.size.zero?
    rating = doctors.map(&:average_doctor_rating).map(&:to_f).sum / doctors.size
    rating.nil? ? "unrated" : rating
  end
end
