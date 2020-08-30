class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # MODEL VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  # DB REALTIONSHIPS
  has_many :vehicules
  has_many :bookings, through: :requested_bookings
  has_many :requested_bookings
end
