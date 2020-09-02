class Vehicule < ApplicationRecord

  # MODEL VALIDATIONS
  validates :brand, presence: true
  validates :capacity, presence: true
  validates :features, presence: true
  validates :location, presence: true
  validates :price, presence: true

  # DB RELATIONSHIPS
  belongs_to :user
  has_many :bookings

  # CLOUDINARY PHOTOS OF THE VEHICULE
  has_many_attached :photos

  # GEOCODING
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


end
