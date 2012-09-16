class RemoveCategoryFromLocations < ActiveRecord::Migration
  def change
	  remove_column :locations, :category
  end
end
