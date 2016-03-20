class Farm < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true
end
