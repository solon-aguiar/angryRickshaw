require "test_helper"

class ApplicationHelperTest < ActiveSupport::TestCase

	include ApplicationHelper

	test "should return the correct title" do
		expected = "Angry Rickshaw - Title Test"
		assert_equal(expected, full_title("Title Test"))
	end

	test "should return the correct title when parameter is passed nil" do
		expected = "Angry Rickshaw"
		assert_equal(expected, full_title(nil))
	end

	test "should return the correct title when parameter is passed blank" do
		expected = "Angry Rickshaw"
		assert_equal(expected, full_title(""))
	end
end