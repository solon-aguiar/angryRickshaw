class RemovingColumnsFromActivity < ActiveRecord::Migration
	def up
		remove_column :activities, :category
		remove_column :activities, :description
		remove_column :activities, :location
		remove_column :activities, :rating
	end

	def down
		add_column :activities, :category, :string
		add_column :activities, :description, :string
		add_column :activities, :location, :string
		add_column :activities, :rating, :float
	end
end
