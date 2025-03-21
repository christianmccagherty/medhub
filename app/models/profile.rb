class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :document
end
