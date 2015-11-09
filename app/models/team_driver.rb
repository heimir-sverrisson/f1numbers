class TeamDriver < ActiveRecord::Base
  belongs_to :team
  belongs_to :driver

  def title
    driver = Driver.find_by_id(driver_id)
    team = Team.find_by_id(team_id)
    "#{driver.name} with #{team.name} from #{started} to #{ended}"
  end
end
