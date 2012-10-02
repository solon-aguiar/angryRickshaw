class ActivityController < ApplicationController

	before_filter :get_categories, :only => [:index, :by_category]

	def index
		redirect_to(activity_by_category_path(@categories.first))
	end

	def by_category
		if params[:category]
			@activities = Activity.includes(:location).where("locations.category_id = ?", params[:category])
		end

		render_404 if @activities.nil? || @activities.blank?
	end

	def show
		@activity = Activity.find(params[:id])

		rescue ActiveRecord::RecordNotFound
			render_404
	end

	def get_categories
		@categories = Category.all
	end

	def render_404
		respond_to do |format|
			format.html { render :file => "#{Rails.root}/public/404", :formats => [:html], :status => 404 }
		end
	end

end
