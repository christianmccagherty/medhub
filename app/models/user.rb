class User < ApplicationRecord
  has_many :appointments
  has_one :profile
  has_one :doctor
  has_one_attached :document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
