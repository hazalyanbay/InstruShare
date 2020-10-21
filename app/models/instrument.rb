class Instrument < ApplicationRecord
  validates :style, presence: true
  validates :rate, presence: true
  validates :location, presence: true
  validates :description, length: { minimum: 5, maximum: 700 }
  belongs_to :user
end
