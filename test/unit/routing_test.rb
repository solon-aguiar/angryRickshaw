require "test_helper"

class RoutingTest < ActionController::TestCase

	test "should route to root" do
		assert_routing '/', { :controller => "home", :action => "home" }
	end

	test "should route to activity index" do
		assert_routing '/activity', { :controller => "activity", :action => "index" }
	end

	test "should route to activity show" do
		assert_routing '/activity/1', { :controller => "activity", :action => "show", :id => "1" }
	end

	test "should route to map map" do
		assert_routing '/map', { :controller => "map", :action => "map" }
	end

	test "should route to currency currency" do
		assert_routing '/currency', { :controller => "currency", :action => "currency" }
	end

	test "should route to about about" do
		assert_routing '/about', { :controller => "about", :action => "about" }
	end

	test "should route to activity by_cateogry" do
		assert_routing '/activity/by_category/category_test', { :controller => "activity", :action => "by_category", :category => "category_test" }
	end
end