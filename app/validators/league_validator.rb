class LeagueValidator < ActiveModel::Validator
  def validate(record)
    league = League.find(record.league_id)
    if league.full? && !league.fleets.include?(record)
      record.errors[:base] << "Unable to join. League is full."
    end
  end
end
