class Specialty < ApplicationRecord
  has_many :disease_specialties
  has_many :diseases, through: :disease_specialties
  has_many :doctor_specialties
  has_many :doctors, through: :doctor_specialties
end
