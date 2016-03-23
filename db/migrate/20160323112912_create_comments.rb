class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :rating

      t.integer :user_id
      t.integer :farm_id

      t.timestamps
    end

    add_index :comments, [:user_id, :farm_id]
    add_index :comments, :farm_id
  end
end
