class Booking < ApplicationRecord
  has_many :requested_bookings
  belongs_to :vehicule
end
