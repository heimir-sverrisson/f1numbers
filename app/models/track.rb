class Track < ActiveRecord::Base
  belongs_to :country
  has_many :races

  def file_name
    "tracks/#{name}".downcase.gsub(/\s/,'_')
  end
end
