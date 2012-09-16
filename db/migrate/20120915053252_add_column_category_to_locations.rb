class AddColumnCategoryToLocations < ActiveRecord::Migration
  def change
	  add_column :locations, :category_id, :integer
  end
end
