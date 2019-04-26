class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :num_of_fleets, :admin_id
end
