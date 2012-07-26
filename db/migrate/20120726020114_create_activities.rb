class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.timestamps
    end
  end
end
