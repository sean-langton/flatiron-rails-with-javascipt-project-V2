module VoyagesHelper

  def voyage_set_ship
    if params[:ship_id] && Ship.exists?(params[:ship_id])
      @ship = Ship.find_by(id: params[:ship_id])
    end
  end

end
