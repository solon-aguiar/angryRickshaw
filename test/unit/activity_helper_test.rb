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
		assert_equal expected_url, gmaps_url(FactoryGirl.create(:location))
	end

	test "transform string replacing spaces by '+'" do
		expected = "some+string+without+spaces"
		assert_equal expected, transform_string("some string without spaces")
	end

	test "short description with maximum characters size allowed" do
		maximum_size = 200
		description = "a" * 210
		assert_equal maximum_size, short_description(description).size
	end

	test "short description with suspension points when it's greater than maximum characters size allowed" do
		description = "a" * 195
		description += "b" * 5
		assert_equal true, short_description(description).end_with?("abb...")
	end

	test "complete description when it's lower than maximum characters size allowed" do
		description = "just a regular description"
		assert_equal false, short_description(description).end_with?("...")
	end
end