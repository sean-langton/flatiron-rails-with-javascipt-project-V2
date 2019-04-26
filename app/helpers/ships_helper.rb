module ShipsHelper

  def set_fleet
    if params[:fleet_id] && Fleet.exists?(params[:fleet_id])
      @fleet = Fleet.find_by(id: params[:fleet_id])
    end
  end

  def set_ship
    if params[:id] && Ship.exists?(params[:id])
      @ship = Ship.find_by(id: params[:id])
    end
  end

end
