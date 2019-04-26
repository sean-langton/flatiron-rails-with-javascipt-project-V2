class Fleet < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :voyages
  has_many :ships, through: :voyages

  validates :name, presence: true
  validates :league_id, :user_id, numericality: true
  validates_with LeagueValidator

  def league_ships
    self.league.ships
  end

  def points
    self.ships.sum {|ship| ship.points(self)}
  end

end
