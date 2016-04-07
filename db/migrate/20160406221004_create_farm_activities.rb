class CreateFarmActivities < ActiveRecord::Migration
  def change
    create_table :farm_activities do |t|
      t.belongs_to :farm, index: true
      t.belongs_to :activity, index: true

      t.integer :farm_id
      t.integer :avtivity_id
      
      t.timestamps
    end
  end
end
