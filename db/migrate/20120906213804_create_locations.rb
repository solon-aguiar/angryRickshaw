class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :category
      t.string :picture
      t.string :address
      t.string :description
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
