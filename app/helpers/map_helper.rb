module MapHelper
	def imageMap(latitude, longitude, zoom)
		"http://maps.google.com/maps/api/staticmap?center=#{latitude},#{longitude}&zoom=#{zoom}&size=500x250&sensor=false"
	end
end
