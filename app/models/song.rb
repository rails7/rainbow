class Song < ActiveRecord::Base
  
  has_many :points, as: :rateable
  
end
