class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :farm

  validates :message, presence: true 

end
