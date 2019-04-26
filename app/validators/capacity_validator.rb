class CapacityValidator < ActiveModel::Validator
  def validate(record)
    if !record.cargo.nil? && record.cargo > Ship.find(record.ship_id).max_cargo
      record.errors[:base] << "Voyage could not be taken. Ship loaded with too much cargo."
    end
    if !record.distance.nil? && record.distance > Ship.find(record.ship_id).max_distance
      record.errors[:base] << "Voyage could not be taken. Ship cannot travel that distance."
    end
  end
end
