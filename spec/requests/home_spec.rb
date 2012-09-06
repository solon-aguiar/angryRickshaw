require 'spec_helper'

describe "Home page" do

	describe "have a menu" do
		it "should show all links" do
			visit root_path
			page.should have_selector('a.thumbnail h2', :text => 'Map')
			page.should have_selector('a.thumbnail h2', :text => 'Activities')
			page.should have_selector('a.thumbnail h2', :text => 'About Us')
			page.should have_selector('a.thumbnail h2', :text => 'Currency')
		end

		it "all links should work properly" do
			visit root_path
			click_link "Angry Rickshaw"
			page.should have_selector('h1', :text => 'Angry Rickshaw')
			visit root_path
			click_link "Map"
			page.should have_selector('li.span12 section h2', :text => 'Map')
			visit root_path
			click_link "Activities"
			page.should have_selector('li.span12 section h2', :text => 'Activities')
			visit root_path
			click_link "About Us"
			page.should have_selector('li.span12 section h2', :text => 'About Us')
			visit root_path
			click_link "Currency"
			page.should have_selector('li.span12 section h2', :text => 'Currency')
		end
	end
end
