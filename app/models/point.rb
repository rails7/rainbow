class Point < ActiveRecord::Base
  
  belongs_to :candidate
  belongs_to :rateable, polymorphic: true
  
  
end
