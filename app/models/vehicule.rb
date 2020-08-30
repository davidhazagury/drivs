class Vehicule < ApplicationRecord

  # MODEL VALIDATIONS
  validates :brand, presence: true
  validates :capacity, presence: true
  validates :features, presence: true
  validates :location, presence: true
  validates :price, presence: true

  # DB RELATIONSHIPS
  belongs_to :user
  belongs_to :vehicule_category
  has_many :bookings
end
