class Review < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :content, length: { maximum: 300, too_long: "%{count} characters is the maximum allowed" }
  validates :rating, numericality: true
  validates :rating, inclusion: { in: 0..5 }
end
