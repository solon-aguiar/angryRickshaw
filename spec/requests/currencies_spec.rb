require 'spec_helper'

describe "Currency Page" do

	subject { page }

	describe "the main structure" do
		before { visit currency_path }
		it { should have_selector('table#otherToRupees') }
		it { should have_selector('table#rupeesToOther') }
		it { should have_selector('div.custom-note') }
		it { should have_selector('input#amount') }
		it { should have_selector('title', :text => 'Angry Rickshaw - Currency') }
	end
end
