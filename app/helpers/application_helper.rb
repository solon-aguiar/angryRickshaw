module ApplicationHelper

	def full_title(page_title)
		base_title = "Angry Rickshaw"
		if page_title.nil? || page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
end
