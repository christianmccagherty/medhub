class Specialty < ApplicationRecord
  has_and_belongs_to_many :diseases
  has_and_belongs_to_many :doctors
end
