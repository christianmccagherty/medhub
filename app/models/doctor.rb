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

  def generate_available_slots(days_ahead = 14)
    return [] unless schedule

    slots = []

    (0..days_ahead).each do |offset|
      date = Date.today + offset
      weekday = date.strftime("%A").downcase

      start_time_str = schedule["#{weekday}_start_time"]
      end_time_str   = schedule["#{weekday}_end_time"]
      next if start_time_str.blank? || end_time_str.blank?

      start_time = Time.zone.parse("#{date} #{start_time_str}")
      end_time   = Time.zone.parse("#{date} #{end_time_str}")

      current_time = start_time
      while current_time < end_time
        slots << current_time
        current_time = current_time + 30.minutes
      end
    end

    slots
  end
end
