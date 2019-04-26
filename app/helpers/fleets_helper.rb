module FleetsHelper

  def set_fleet
    @fleet = Fleet.find(params[:id])
  end
  
end
