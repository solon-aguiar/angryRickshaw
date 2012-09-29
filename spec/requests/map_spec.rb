require "spec_helper"

describe "Map page" do

	subject { page }

	describe "should have the main structure" do
		before { visit map_path }
		it { should have_selector('h1', :text => 'Angry Rickshaw') }
		it { should have_selector('h2#mapPageTitle', :text => 'Map') }
		it { should have_selector('title', :text => 'Angry Rickshaw - Map') }
	end

end