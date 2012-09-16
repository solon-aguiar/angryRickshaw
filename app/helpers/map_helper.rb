module MapHelper
	def image_map(latitude, longitude)
		zoom = 16
		marker_color = "red"
		map_width = 450
		map_height = 250
		"http://maps.google.com/maps/api/staticmap?center=#{latitude},#{longitude}&zoom=#{zoom}&size=#{map_width}x#{map_height}&markers=color:#{marker_color}%7Clabel:%7C#{latitude},#{longitude}&sensor=false"
	end

	def active_tab
		tab_number = 0
		if params[:category]
			tab_number = params[:category].to_i - 1
		end
		tab_number
	end
end
