class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :time, presence: true
  validate :no_double_booking

  private

  def no_double_booking
    existing_appointment = Appointment.where(doctor_id: doctor_id, time: time).exists?
    errors.add(:time, "This slot is already taken") if existing_appointment
  end
end
