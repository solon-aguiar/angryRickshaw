class AddColumnLocationIdToActivity < ActiveRecord::Migration
  def up
	  add_column :activities, :location_id, :integer
  end
  def down
	  remove_column :activities, :location_id
  end
end
