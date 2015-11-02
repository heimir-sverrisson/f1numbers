class Track < ActiveRecord::Base
  belongs_to :country
  has_many :races
end
