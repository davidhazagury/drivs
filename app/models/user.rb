class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # MODEL VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  # DB REALTIONSHIPS
  has_many :vehicules, dependent: :destroy
  has_many :bookings, through: :requested_bookings
  has_many :requested_bookings
  # AVATAR
  has_one_attached :photo
end
