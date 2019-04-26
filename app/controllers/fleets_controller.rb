class FleetsController < ApplicationController
  include ApplicationHelper, FleetsHelper
  before_action :set_user, only: [:new, :create, :show, :destroy, :edit]
  before_action :set_fleet, only: [:show, :edit, :update]

  def show
    @ships = @fleet.ships
    @owner = "True" if @fleet.user == @user
  end

  def new
    if !params[:league_id] || !League.exists?(params[:league_id])
      redirect_to leagues_path
      flash[:notice] = "Fleets must belong to a league. Please Try Again."
    else
      @fleet = Fleet.new(league_id: params[:league_id])
    end
  end

  def create
    @fleet = Fleet.new(fleet_params)
    @user.fleets << @fleet
      if @fleet.save
        flash[:notice] = "Fleet Created"
        redirect_to fleet_path(@fleet)
      else
        render :new
      end
  end

  def destroy
  end

  def edit
    if @fleet.user != @user
      flash[:notice] = "Access Denied. Unable To Edit Fleets That Belong To Other Users"
      redirect_to user_path(@user)
    end
  end

  def update
    @fleet.update(fleet_params)
    redirect_to fleet_path(@fleet)
  end

  private

  def fleet_params
    params.require(:fleet).permit(:name, :league_id)
  end
end
