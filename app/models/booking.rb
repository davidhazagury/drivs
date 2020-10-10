class Booking < ApplicationRecord

  #MODEL VALIDATIONS
  validates :start_date, presence: true
  validates :end_time, presence: true

  # DB RELATIONSHIPS
  belongs_to :user
  belongs_to :vehicule

end
