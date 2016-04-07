class FarmActivity < ActiveRecord::Base
  belongs_to :farm
  belongs_to :activity
end
