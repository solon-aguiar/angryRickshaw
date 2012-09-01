require 'spec_helper'

describe "Currency Page" do

	describe "the main structure" do

		it "should have the currency tables" do
			visit '/currency'
			page.should have_selector('table#otherToRupees')
			page.should have_selector('table#rupeesToOther')
		end

		it "should have the field where note is shown" do
			visit '/currency'
			page.should have_selector('div.custom-note')
		end

		it "should have the text field to insert the value" do
			visit '/currency'
			page.should have_selector('input#amount')
		end
	end
end
