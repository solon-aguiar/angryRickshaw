class ErrorsController < ApplicationController
	def render_404
		respond_to do |format|
			format.html { render :file => "#{Rails.root}/public/404", :formats => [:html], :status => 404 }
		end
	end
end