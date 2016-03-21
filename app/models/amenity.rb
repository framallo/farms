class Amenity < ActiveRecord::Base
  belongs_to :farm

  validates :farm, presence: true
  validates :name, presence: true, length: { minimum: 3 }

  def self.populate_amenities(farm)
    default_amenities.each do |amenity|
      find_or_create_by(farm: farm, name: amenity)
    end
  end

  def self.default_amenities
    [ 'Drinking Water', 'Fire Ring / Grill', 'Hike / Bike Campsites',
      'Pets Allowed', 'Picnic Table', 'RV Hookup', 'RV Sanitation',
      'Shower', 'Toilet', 'Biking', 'Boating', 'Climbing',
      'Fishing', 'Hiking', 'Horseback Riding', 'Kayaking & Canoeing',
      'Kiteboarding & Windsurfing', 'OHV', 'Snow Sports', 'Surfing',
      'Swimming', 'Whitewater Rafting & Kayaking', 'Wildlife Watching', 'something awesome']
  end
end
