class ActivityController < ApplicationController

	def activities

		@categories = Category.all

		if params[:category]
			@activities = Activity.includes(:location).where("locations.category_id = ?", params[:category])
		else
			@activities = Activity.includes(:location).where("locations.category_id = ?", @categories.first)
		end
	end
end
