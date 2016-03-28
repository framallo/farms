class CreateFarmAmenities < ActiveRecord::Migration
  def change
    create_table :farm_amenities do |t|
      t.belongs_to :farm, index: true
      t.belongs_to :amenity, index: true

      t.boolean :has_amenity
      t.integer :farm_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
