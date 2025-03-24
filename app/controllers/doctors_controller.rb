class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @review = Review.new
    @reviews = @doctor.reviews

    @available_time_slots = generate_available_slots(@doctor)
  end

  private

  def generate_available_slots(doctor, days_ahead = 60)
    schedule = doctor.schedule
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

      while start_time < end_time
        slots << start_time
        start_time = start_time + 30.minutes
      end
      slots
    end
  end
end
