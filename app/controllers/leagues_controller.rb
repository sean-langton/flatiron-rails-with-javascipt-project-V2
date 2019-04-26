class LeaguesController < ApplicationController
  include ApplicationHelper
  before_action :set_user, only: [:new, :create, :show, :destroy]

  def index
    @leagues = League.all

  end

  def show
    @league = League.find(params[:id])
    @fleets = @league.fleets
  end

  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    @league.admin_id = @user.id
      if @league.save
        flash[:notice] = "League Created "
        redirect_to league_path(@league)
      else
        render :new
      end
  end

  def destroy
    @league = League.find(params[:id])
    binding.pry
    if @league.admin_id == @user.id
      @league.destroy
      flash[:notice] = "League Deleted"
    else
      flash[:notice] = "Error Deleting League, Please Contact Admin"
    end
      redirect_to leagues_path
  end

  private

  def league_params
    params.require(:league).permit(:name, :num_of_fleets)
  end
end
