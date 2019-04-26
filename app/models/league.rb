class League < ApplicationRecord
  validates :name, presence: true
  validates :num_of_fleets, numericality: {greater_than: 0, less_than_or_equal_to: 12}
  validates :admin_id, presence: true

  has_many :fleets
  has_many :ships, through: :fleets
  has_many :users, through: :fleets

  def full?
    self.fleets.count >= self.num_of_fleets
  end
end
