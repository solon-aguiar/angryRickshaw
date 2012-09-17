require "spec_helper"

describe Activity do
	before { @activity = FactoryGirl.create(:activity) }

	subject { @activity }

	it { should be_valid }
	it { should respond_to(:name) }
	it { should respond_to(:location) }

	it { should belong_to(:location) }

	describe "when name isn't present" do
		before { @activity.name = " " }
		it { should be_invalid }
	end

	describe "when location isn't present" do
		before { @activity.location = nil }
		it { should be_invalid }
	end


end
