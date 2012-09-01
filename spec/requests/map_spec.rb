require "spec_helper"

describe "Map page." do

	describe "The main structure" do

		it "should have the title" do
			visit '/map'
			page.should have_selector('h2', :text => 'Map')
		end

		it "should have the location types section" do
			visit '/map'
			page.should have_selector('div.tabbable.tabs-left')
			page.should have_selector('ul.nav.nav-tabs')
		end

		it "should have the location content section" do
			visit '/map'
			page.should have_selector('div.tab-content')
			page.should have_selector('div.tab-pane')
			page.should have_selector('ul.locations')
		end
	end
end