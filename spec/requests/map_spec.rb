require "spec_helper"

describe "Map page" do

	subject { page }

	describe "without parameter should have the main structure" do
		before { visit map_path }
		it { should have_selector('h1', :text => 'Angry Rickshaw') }
		it { should have_selector('h2#mapPageTitle', :text => 'Map') }
	end

	describe "should have the title when a parameter is used" do
		let(:category) { FactoryGirl.create(:category) }
		before { visit location_map_path(:category) }

		it { should have_selector('h1', :text => 'Angry Rickshaw') }
		it { should have_selector('h2#mapPageTitle', :text => 'Map') }
		it { should have_selector('ul#mapMenu') }
		it { should have_selector('ul#mapLocations') }
	end

end