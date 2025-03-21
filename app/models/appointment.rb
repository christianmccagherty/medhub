class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :time, presence: true
  validate :no_double_booking
  validate :within_doctor_schedule

  private

  # This validation disables double-booking a doctor
  def no_double_booking
    existing_appointment = Appointment.where(doctor_id: doctor_id, time: time).exists?
    errors.add(:time, "This slot is already taken") if existing_appointment
  end

  # This validation disables booking times outside doctor's availability:
  def within_doctor_schedule
    return if time.blank? || doctor.schedule.blank?

    weekday = time.strftime("%A").downcase
    start_time = doctor.schedule["#{weekday}_start_time"]
    end_time   = doctor.schedule["#{weekday}_end_time"]

    if start_time.blank? || end_time.blank?
      errors.add(:time, "Doctor is not available on #{weekday.capitalize}")
      return
    end

    selected_time = time.strftime("%H:%M")

    if selected_time < start_time || selected_time > end_time
      errors.add(:time, "is outside of the doctor's working hours on #{weekday.capitalize} (#{start_time} - #{end_time})")
    end
  end
end
