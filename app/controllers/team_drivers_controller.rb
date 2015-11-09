class TeamDriversController < ApplicationController
  before_action :set_team_driver, only: [:show, :edit, :update, :destroy]
  before_action :set_teams_and_drivers

  # GET /team_drivers
  def index
    @team_drivers = TeamDriver.joins(:driver).
      order('drivers.first_name','team_drivers.started desc')
  end

  # GET /team_drivers/1
  def show
  end

  # GET /team_drivers/new
  def new
    @team_driver = TeamDriver.new
  end

  # GET /team_drivers/1/edit
  def edit
  end

  # POST /team_drivers
  def create
    @team_driver = TeamDriver.new(team_driver_params)

    if @team_driver.save
      redirect_to @team_driver, notice: 'Team driver was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /team_drivers/1
  def update
    if @team_driver.update(team_driver_params)
      redirect_to @team_driver, notice: 'Team driver was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /team_drivers/1
  def destroy
    @team_driver.destroy
    redirect_to team_drivers_url, notice: 'Team driver was successfully destroyed.'
  end

  # Use callbacks to share common setup or constraints between actions.
  private def set_team_driver
    @team_driver = TeamDriver.find(params[:id])
  end

  private def set_teams_and_drivers
    @teams = Team.all.order(:name)
    @drivers = Driver.all.order(:first_name)
  end

  # Only allow a trusted parameter "white list" through.
  private def team_driver_params
    params.require(:team_driver).
      permit(:started, :ended, :notes, :team_id, :driver_id)
  end
end
