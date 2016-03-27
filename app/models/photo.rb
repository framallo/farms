class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :farm

  mount_uploader :picture, PictureUploader
  validates :picture, presence: true

end
