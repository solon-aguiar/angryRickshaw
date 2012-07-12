require 'spec_helper'

describe "AngryRickshaws" do

  describe "Home page" do
    it "should show navigation bar" do
      visit '/'
      page.should have_selector('nav a', :text => 'Home')
      page.should have_selector('nav a', :text => 'Map')
      page.should have_selector('nav a', :text => 'Activities')
      page.should have_selector('nav a', :text => 'Currency')
      page.should have_selector('nav a', :text => 'About')
    end
  end

  describe "Map page" do
    it "should show navigation bar" do
      visit '/map'
      page.should have_selector('nav a', :text => 'Home')
      page.should have_selector('nav a', :text => 'Map')
      page.should have_selector('nav a', :text => 'Activities')
      page.should have_selector('nav a', :text => 'Currency')
      page.should have_selector('nav a', :text => 'About')
    end
  end

  describe "Activities page" do
    it "should show navigation bar" do
      visit '/activity'
      page.should have_selector('nav a', :text => 'Home')
      page.should have_selector('nav a', :text => 'Map')
      page.should have_selector('nav a', :text => 'Activities')
      page.should have_selector('nav a', :text => 'Currency')
      page.should have_selector('nav a', :text => 'About')
    end
  end

  describe "Currency page" do
    it "should show navigation bar" do
      visit '/currency'
      page.should have_selector('nav a', :text => 'Home')
      page.should have_selector('nav a', :text => 'Map')
      page.should have_selector('nav a', :text => 'Activities')
      page.should have_selector('nav a', :text => 'Currency')
      page.should have_selector('nav a', :text => 'About')
    end
  end

  describe "About page" do
    it "should show navigation bar" do
      visit '/about'
      page.should have_selector('nav a', :text => 'Home')
      page.should have_selector('nav a', :text => 'Map')
      page.should have_selector('nav a', :text => 'Activities')
      page.should have_selector('nav a', :text => 'Currency')
      page.should have_selector('nav a', :text => 'About')
    end
  end
end
