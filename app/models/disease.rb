class Disease < ApplicationRecord
  has_many :disease_specialties
  has_many :specialties, through: :disease_specialties
end
