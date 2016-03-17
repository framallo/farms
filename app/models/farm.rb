class Farm < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true

  scope :search, ->(q) { where(["name like ? or description like ?", "%#{q}%", "%#{q}%"])}
  scope :search_beginning_with, ->(q) { where(["name like ?", "#{q}%"])}
  scope :full_text_search, ->(q) { where(["to_tsvector('english', description) @@ to_tsquery('english', ?)", q])}
  # scope :name, lambda { |param| where(:field => "value") }
end
