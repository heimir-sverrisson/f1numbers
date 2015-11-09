class Team < ActiveRecord::Base
  belongs_to :country
  has_many :team_drivers

  def file_name
    "teams/#{name}".downcase.gsub(/\s/,'_')
  end
end
