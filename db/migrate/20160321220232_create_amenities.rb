class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.integer  "farm_id"
      t.string   "name"
      t.boolean  "exists", default: false

      t.timestamps
    end

    Farm.all.each do |farm|
      farm.populate_amenities
    end
  end
end
