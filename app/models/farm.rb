class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :comments
  has_many :farm_amenities
  has_many :amenities, :through => :farm_amenities
  has_many :farm_activities
  has_many :activities, :through => :farm_activities

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true


end
