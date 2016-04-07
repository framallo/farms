class Activity < ActiveRecord::Base
  has_many :farm_activities
  has_many :farms, :through => :farm_activities
end
