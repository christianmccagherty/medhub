class Disease < ApplicationRecord
  has_and_belongs_to_many :specialties
end
