class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :questions
  has_one :profile, dependent: :destroy
  has_one :doctor, dependent: :destroy
  has_one_attached :document, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  delegate :full_name, to: :profile
end
