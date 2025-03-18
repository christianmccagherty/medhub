class Doctor < ApplicationRecord
  belongs_to :user
  belongs_to :clinic
  has_many :appointments
  has_many :schedules
end
