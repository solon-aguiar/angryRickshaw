class AddLocationToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :location, :string
  end
end
