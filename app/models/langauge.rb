class Langauge < ApplicationRecord
  has_many :doctor_langauges
  has_many :doctors, through: :doctor_langauges
end
