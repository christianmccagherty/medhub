class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :document

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :dob, presence: true
end
