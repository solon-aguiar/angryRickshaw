require 'spec_helper'

describe "Activities" do

	describe "should have the main structure" do
		before { visit activities_path }
		it { page.should have_selector('h1', :text => 'Angry Rickshaw') }
		it { page.should have_selector('h2#activityPageTitle', :text => 'Activities') }
	end
end
