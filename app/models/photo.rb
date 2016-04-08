class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :farm
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader

  include RankedModel
  ranks :row_order, :with_same => :farm_id

end
