class Race < ActiveRecord::Base
  belongs_to :track
  has_many :race_results
  has_many :qualifying_results
end
