class Country < ActiveRecord::Base
  belongs_to :continent
  has_many :drivers
  has_many :tracks
  has_many :teams
end
