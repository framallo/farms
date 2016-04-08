class AlterPhotosAddRowOrder < ActiveRecord::Migration
  def change
    add_column :photos, :row_order, :integer
    add_index :photos, :row_order
  end
end
