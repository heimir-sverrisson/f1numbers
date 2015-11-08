class Driver < ActiveRecord::Base
  belongs_to :country
  has_many :races

  def name
    "#{first_name} #{last_name}"
  end

  def file_name
    "#{first_name} #{last_name}".downcase.gsub(/\s/,'_')
  end
end
