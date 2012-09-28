require 'spec_helper'

describe "Activity" do

	include ActivityHelper

	subject { page }

	describe "Activity List page" do
		before { visit all_activity_path }

		describe "should have the main structure" do
			it { "has main title"; should have_selector('h1', :text => 'Angry Rickshaw') }
			it { "has the subtitle"; should have_selector('h2#activitiesPageTitle', :text => 'Activities')}

			describe "each activity" do
				it { "has a link redirecting to google maps"; should have_selector('a.btn', :text => 'Get Directions') }
				it { "has a link to get more activity details"; should have_selector('a.btn', :text => 'More Details') }
				it { "it has the short description being shown"; should have_selector('div.location-text p', :text => short_description(activities(:first_displayed).location.description)) }
			end
		end

		describe "links should point the right places" do
			it { "has the correct google maps link"; find_link("Get Directions")[:href].should == gmaps_url(activities(:first_displayed).location) }
			it { "has the correct details link"; find_link("More Details")[:href].should == activity_path(activities(:first_displayed)) }
		end
	end

	describe "Activity Show page" do
		before { visit activity_path(categories(:category_1)) }

		describe "should have the main structure" do
			it { should have_selector('h1', :text => 'Angry Rickshaw') }
			it { should have_selector('h2#activityName', :text => 'Default Location 1')}
			it { should have_selector('h5#activityCategory', :text => 'Category 1')}
			it { should have_selector('p#activityDescription', :text => 'It\'s a normal, regular and not interesting location')}
			it { should have_selector('img#activityMap')}
			it { should have_selector('img#activityPhoto')}
		end

		describe "links should point the right places" do
			it { find_link("More #{categories(:category_1).name}")[:href].should == activity_by_category_path(categories(:category_1)) }
			it { find_link("All Categories")[:href].should == all_activity_path }
		end

		describe "should redirect to 404 page when none existent parameter is passed" do
			before {
				invalid_category_id = 0
				visit activity_by_category_path(invalid_category_id)
			}
			it { should have_selector('h2#error404Title', :text => 'The page you were looking for doesn\'t exist') }
		end
	end

end
