class Vehicule < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  belongs_to :vehicule_category
  has_many :requested_bookings
end
