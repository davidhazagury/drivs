class Vehicule < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule_category
  has_many :bookings
end
