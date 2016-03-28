class Amenity < ActiveRecord::Base
  has_many :farm_amenities
  has_many :farms, :through => :farm_amenities
end
