require "test_helper"

class ActivityHelperTest < ActiveSupport::TestCase

	include ActivityHelper

	test "image of map url" do
		expected_url = "http://maps.google.com/maps/api/staticmap?center=1,2&zoom=16&size=450x250&markers=color:red%7Clabel:%7C1,2&sensor=false"
		assert_equal expected_url, image_map(1, 2)
	end

	test "active tab" do
		pending "active_tab.should be(0)"
	end

	test "google maps generated url" do
		expected_url = "http://maps.google.com/maps?q=Test+Location,+Test+Address&ll=1.0,2.0"
		location = FactoryGirl.create(:location)

		assert_equal expected_url, gmaps_url(location)
	end

	test "transform address string replacing spaces by +" do
		expected = "some+string+without+spaces"
		assert_equal expected, transform_string("some string without spaces")
	end
end