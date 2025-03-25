class DiseaseSpecialty < ApplicationRecord
  belongs_to :disease
  belongs_to :specialty
end
