class RemovingColumnsFromActivity < ActiveRecord::Migration
	def up
		remove_column :activities, :category
		remove_column :activities, :description
		remove_column :activities, :location
		remove_column :activities, :rating

		add_column :activities, :location_id, :integer

	end

	def down

		remove_column :activities, :location_id

		add_column :activities, :category, :string
		add_column :activities, :description, :string
		add_column :activities, :location, :string
		add_column :activities, :rating, :float
	end
end
