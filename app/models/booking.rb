class Booking < ApplicationRecord
  after_validation :calc_total_price
  belongs_to :user
  belongs_to :instrument
  has_one :review

  private

  def calc_total_price
    self.total_price = (end_time - start_time).to_i * instrument.rate
  end
end
