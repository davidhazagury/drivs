class RequestedBooking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule
end
