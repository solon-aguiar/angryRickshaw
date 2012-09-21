require 'spec_helper'

describe "Home page" do

	subject { page }

	describe "have a menu" do
		before { visit root_path }

		describe "should show all links" do
			it { should have_selector('a.thumbnail h2', :text => 'Map') }
			it { should have_selector('a.thumbnail h2', :text => 'Activities') }
			it { should have_selector('a.thumbnail h2', :text => 'About Us') }
			it { should have_selector('a.thumbnail h2', :text => 'Currency') }
		end


		describe "all links should work properly" do
			it do
				click_link "Angry Rickshaw"
				should have_selector('h1', :text => 'Angry Rickshaw')
			end
			it do
				click_link "Map"
				should have_selector('li.span12 section h2', :text => 'Map')
			end
			it do
				click_link "About Us"
				should have_selector('li.span12 section h2', :text => 'About Us')
			end
			it do
				click_link "Currency"
				should have_selector('li.span12 section h2', :text => 'Currency')
			end
			it do
				click_link "Activities"
				should have_selector('li.span12 section h2', :text => 'Activities')
			end
		end
	end
end
