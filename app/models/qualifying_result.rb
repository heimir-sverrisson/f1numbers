class QualifyingResult < ActiveRecord::Base
  belongs_to :driver
  belongs_to :race
end
