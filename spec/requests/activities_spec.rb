require 'spec_helper'

describe Activity do

	include ActivityHelper

	subject { page }

	describe "should have the main structure" do
		before { visit all_activity_path }
		it "has main title" do
			should have_selector('h1', :text => 'Angry Rickshaw')
		end

		it "has the subtitle" do
			should have_selector('h2#activityPageTitle', :text => 'Activities')
		end

		describe "each activity" do
			it "has a link redirecting to google maps" do
				should have_selector('a.btn', :text => 'Get Directions')
			end
			it "has a link to get more activity details" do
				should have_selector('a.btn', :text => 'More Details')
			end
		end
	end

	describe "links point the right places" do
		FIRST_CATEGORY_ID = 1
		location = Location.find_by_category_id(FIRST_CATEGORY_ID)
		activity = Activity.find_by_location_id(location)
		before { visit all_activity_path }

		it "has the correct google maps link" do
			find_link("Get Directions")[:href].should == gmaps_url(activity.location)
		end

		it "has the correct details link" do
			find_link("More Details")[:href].should == activity_path(activity)
		end
	end
end
