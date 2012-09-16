class MapController < ApplicationController

	before_filter :get_categories

	def get_categories
		@categories = Category.order(:name).all
	end

	def index
		if params[:category]
			@locations = Location.order(:name).find_all_by_category_id(params[:category])
		else
			@locations = Location.order(:name).find_all_by_category_id(@categories.first)
		end
	end

end
