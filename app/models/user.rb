class User < ApplicationRecord
  has_secure_password
  validates :username, :email, uniqueness: true, presence: true

  has_many :fleets
  has_many :ships, through: :fleets
end
