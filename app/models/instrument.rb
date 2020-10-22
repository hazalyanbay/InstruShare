class Instrument < ApplicationRecord
  validates :style, presence: true
  validates :rate, presence: true
  validates :location, presence: true
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :description, length: { minimum: 5, maximum: 700 }
  belongs_to :user
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  
  def self.styles
    ["Acoustic Guitar", "Electric Guitar", "Drum Kit", "Ukulele", "Flute", "Violin"]
  end
end
