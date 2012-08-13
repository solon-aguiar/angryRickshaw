class AddRatingToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :rating, :double
  end
end
