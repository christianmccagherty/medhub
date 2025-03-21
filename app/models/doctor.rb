class Doctor < ApplicationRecord
  belongs_to :user
  belongs_to :clinic
  has_many :appointments
  has_one :schedule
  has_and_belongs_to_many :specialties
  has_many :doctor_langauges
  has_many :langauges, through: :doctor_langauges
end
