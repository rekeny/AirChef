class Chef < ApplicationRecord
  has_many :bookings

include PgSearch::Model
    pg_search_scope :search_by_location,
    against: [ :location, :cuisines, :hourly_rate ],
    using: {
      tsearch: { prefix: true }
    }

  validates :name, :bio, :location, :years_experience, :hourly_rate, :cuisines, presence: true
  validates :years_experience, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 70}
  validates :bio, length: { minimum: 10 }

  has_one_attached :photo
  has_many_attached :dish_photos

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


end
