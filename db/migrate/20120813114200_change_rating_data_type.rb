class ChangeRatingDataType < ActiveRecord::Migration
  def up
    change_table :activities do |t|
      t.change :rating, :float
    end
  end

  def down
    change_table :activities do |t|
      t.change :rating, :float
    end
  end
end
