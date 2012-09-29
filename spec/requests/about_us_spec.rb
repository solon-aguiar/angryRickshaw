require 'spec_helper'

describe "AboutUs" do

	subject { page }

	describe "should have the main structure" do
		before { visit about_path }
		it { "has main title"; should have_selector('h1', :text => 'Angry Rickshaw') }
		it { "has the subtitle"; should have_selector('h2#aboutusTitle', :text => 'About Us')}
		it { "has main page title"; should have_selector('title', :text => 'Angry Rickshaw - About Us') }
	end
end
