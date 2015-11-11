class TeamsController < ApplicationController
  before_action :set_countries
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/1
  def show
    set_with_drivers
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to @team, notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end

  # Use callbacks to share common setup or constraints between actions.
  private def set_team
    @team = Team.find(params[:id])
  end

  private def set_countries
    @countries = Country.all.order(:name)
  end

  private def set_with_drivers
    @with_drivers = []
    connection = ActiveRecord::Base.connection
    results = connection.
      execute("SELECT d.id, d.first_name || ' ' || d.last_name as name,"\
              " date_part('year',td.started) AS year"\
              " FROM team_drivers as td"\
              " INNER JOIN drivers as d on d.id = td.driver_id"\
              " WHERE td.team_id = #{@team.id}"\
              " ORDER BY td.started desc")
    results.each do |row|
      driver_id = row['id'].to_i
      year = row['year']
      driver_name = row['name']
      description = "#{driver_name} in (#{year})"
      driver = Driver.find_by_id(driver_id)
      url = driver_path(driver)
      @with_drivers << { description: description, url: url }
    end
  end
  # Only allow a trusted parameter "white list" through.
  private def team_params
    params.require(:team).permit(:name, :home_base, :power_unit,
                                 :principal, :technical_chief,
                                 :year_created, :country_id)
  end
end
