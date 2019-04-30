class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :max_cargo, :max_distance
  has_many :voyages
end
