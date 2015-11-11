class DriversController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :edit, :udate, :destroy]
  before_action :set_driver, only: [:show, :edit, :update, :destroy]
  before_action :set_countries

  # GET /drivers
  # GET /drivers.json
  def index
    @drivers = Driver.all
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
    set_in_teams
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
  end

  # GET /drivers/1/edit
  def edit
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to @driver, notice: 'Driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'Driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    private def set_countries
      @countries = Country.all.order(:name)
    end

    private def set_in_teams
      @in_teams = []
      connection = ActiveRecord::Base.connection
      results = connection.
        execute("SELECT date_part('year',td.started) AS year, t.name,"\
                " td.notes"\
                " FROM team_drivers as td"\
                " INNER JOIN teams as t on t.id = td.team_id"\
                " WHERE td.driver_id = #{@driver.id}"\
                " ORDER BY td.started desc")
      results.each do |row|
        year = row['year']
        team_name = row['name']
        notes = row['notes']
        description = "#{year} with "
        team = Team.find_by_name(team_name)
        url = team_path(team)
        @in_teams << { description: description, team_name: team_name,
                       url: url, notes: notes }
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    private def driver_params
      params.require(:driver).permit(:first_name, :last_name, :nickname,
                                     :date_of_birth, :country_id)
    end
end
