module ActivityHelper
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

	def gmaps_url(location)
		"http://maps.google.com/maps?q=#{transform_string(location.name)},+#{transform_string(location.address)}&ll=#{location.latitude},#{location.longitude}"
	end

	def transform_string(address)
		address.gsub(" ", "+")
	end

	def short_description(description)
		desc_returned = description
		if description.size >= 200
			desc_returned = description[0,197] << "..."
		end

		desc_returned
	end
end
