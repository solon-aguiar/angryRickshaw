require 'spec_helper'

describe "Activity" do

	include ActivityHelper

	subject { page }

	describe "Activity List page" do
		before { visit all_activity_path }

		describe "should have the main structure" do
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
				it "it has the short description being shown" do
					should have_selector('div.location-text p', :text => short_description(activities(:first_displayed).location.description))
				end
			end
		end

		describe "links should point the right places" do
			it "has the correct google maps link" do
				find_link("Get Directions")[:href].should == gmaps_url(activities(:first_displayed).location)
			end

			it "has the correct details link" do
				find_link("More Details")[:href].should == activity_path(activities(:first_displayed))
			end
		end

		describe "should redirect to 404 page when none existent parameter is passed" do
			before { visit activity_by_category_path(0) }
			it { should have_selector('h2#error404Title', :text => 'The page you were looking for doesn\'t exist') }
		end
	end

end
