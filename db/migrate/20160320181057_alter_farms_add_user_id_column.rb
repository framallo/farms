class AlterFarmsAddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :farms, :user_id, :integer
    add_index :farms, :user_id
  end
end
