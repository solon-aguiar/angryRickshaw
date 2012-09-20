require 'spec_helper'

describe "Activities" do

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
		end


	end

	describe "links point the right places" do
		it "has the correct google maps link" do
			visit all_activity_path
			find_link("Get Directions")[:href].should =~ /http:\/\/maps.google.com\/maps\?q=[\S]*&ll=\d+\.?\d*,\d+\.?\d*/
		end
	end
end
