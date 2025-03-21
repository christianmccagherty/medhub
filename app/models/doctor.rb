class Doctor < ApplicationRecord
  belongs_to :user
  belongs_to :clinic
  has_many :appointments
  has_one :schedule
  has_and_belongs_to_many :specialties
  has_many :doctor_langauges, dependent: :destroy
  has_many :langauges, through: :doctor_langauges
  has_many :reviews
  def average_doctor_rating
    return "unrated" if reviews.size == 0
    rating = reviews.map(&:rating).sum / reviews.size
    rating == nil ? "unrated" : rating
  end
end
