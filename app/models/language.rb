class Language < ApplicationRecord
  has_many :doctor_languages
  has_many :doctors, through: :doctor_languages
  has_many :profile_languages
  has_many :profiles, through: :profile_languages
end
