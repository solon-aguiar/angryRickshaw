require "test_helper"

class MapHelperTest < ActiveSupport::TestCase

	include MapHelper

	test "image of map url" do
		expected_url = "http://maps.google.com/maps/api/staticmap?center=1,2&zoom=16&size=450x250&markers=color:red%7Clabel:%7C1,2&sensor=false"
		assert_equal expected_url, image_map(1, 2)
	end

	test "active tab" do
		pending "active_tab.should be(0)"
	end
end