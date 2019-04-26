class Ship < ApplicationRecord

  @@sizes = ["Handy Size", "Handymax", "Panamax", "Neopanamax", "Capesize", "Chinamax"]

  has_many :voyages
  has_many :fleets, through: :voyages
  validates :name, presence: true
  validates :size, inclusion: { in: @@sizes}
  validates :max_cargo, :max_distance, numericality: true
  scope :cargo_weight, -> { order("ships.max_cargo DESC") }


  def self.sizes
    @@sizes
  end

  def available(fleet)
    !fleet.league.ships.include?(self) && !fleet.ships.find_by(size: self.size)
  end

  def sum_distance(fleet)
    self.voyages.where(fleet_id: fleet.id).sum("distance")
  end

  def sum_cargo(fleet)
    self.voyages.where(fleet_id: fleet.id).sum("cargo")
  end

  def points(fleet)
    sum_distance(fleet) * sum_cargo(fleet) / 1000
  end

end
