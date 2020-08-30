class Booking < ApplicationRecord

  #MODEL VALIDATIONS
  validates :start_date, presence: true
  validates :end_time, presence: true

  # DB RELATIONSHIPS
  has_many :requested_bookings
  belongs_to :vehicule
end
