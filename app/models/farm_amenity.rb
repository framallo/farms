class FarmAmenity < ActiveRecord::Base
  belongs_to :farm
  belongs_to :amenity
end
