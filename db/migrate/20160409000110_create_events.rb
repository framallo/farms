class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :start_time
      t.string :end_time
      t.date :start_date
      t.date :end_date
      
      t.references :farm

      t.timestamps
    end
  end
end
