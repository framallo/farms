class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :amenities
  has_many :comments

  # geocoded_by :address
  after_validation :geocode
  after_create :populate_amenities

  def geocode
    self.latitude = 42.700149
    self.longitude = -74.922767
  end

  def populate_amenities
    Amenity.populate_amenities(self)
  end

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true
end
