class AddColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :name, :string
    add_column :activities, :category, :string
    add_column :activities, :description, :string
  end
end
