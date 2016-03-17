class Farm < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
