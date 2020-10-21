class Instrument < ApplicationRecord
  validates :style, presence: true
  validates :rate, presence: true
  validates :location, presence: true
  validates :description, length: { minimum: 5, maximum: 700, too_long: "700 characters is the maximum allowed" }
  belongs_to :user
end
