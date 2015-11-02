class Team < ActiveRecord::Base
  belongs_to :country
  has_many :team_drivers
end
