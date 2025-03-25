class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :document
  has_many :profile_languages
  has_many :languages, through: :profile_languages

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :dob, presence: true
  validates :languages, presence: { message: "must select at least one language" }
end
