class ActivityController < ApplicationController

	before_filter :get_categories, :only => [:index, :by_category]

	def index
		redirect_to(activity_by_category_path(@categories.first))
	end

	def by_category
		if params[:category]
			@activities = Activity.includes(:location).where("locations.category_id = ?", params[:category])
		end

		render_404 and return if @activities.empty?

		respond_to do |format|
			format.html
		end
	end

	def create

	end

	def new

	end

	def edit

	end

	def show

	end

	def update

	end

	def destroy

	end

	def get_categories
		@categories = Category.all
	end

	def render_404
		respond_to do |format|
			format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found }
			#format.xml  { head :not_found }
			#format.json  { head :not_found }
		end
	end

end
