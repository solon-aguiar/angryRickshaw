class AddRatingToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :rating, :float
  end
end
