class VoyageSerializer < ActiveModel::Serializer
  attributes :id, :dep_port, :arr_port, :distance, :cargo
  belongs_to :ship
end
