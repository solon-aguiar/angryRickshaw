class ActivityController < ApplicationController

	before_filter :get_categories, :only => [:index, :by_category]

	def index
		redirect_to(activity_by_category_path(@categories.first))
	end

	def by_category
		if params[:category]
			@activities = Activity.includes(:location).where("locations.category_id = ?", params[:category])
		end

		render_404?(@activities)
	end

	def create

	end

	def new

	end

	def edit

	end

	def show
		@activity = Activity.find(params[:id])

		render_404?(@activity)
	end

	def update

	end

	def destroy

	end

	def get_categories
		@categories = Category.all
	end

	def render_404?(subject)
		if subject.nil? || subject.blank?
			respond_to do |format|
				format.html { render :file => "#{Rails.root}/public/404", :formats => [:html], :status => 404 }
			end
		end
	end

end
