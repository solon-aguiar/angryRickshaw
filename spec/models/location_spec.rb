require 'spec_helper'

describe Location do

	before { @location = FactoryGirl.create(:location) }

	subject { @location }

	it { should respond_to(:name) }
	it { should respond_to(:category) }
	it { should respond_to(:description) }
	it { should respond_to(:picture) }
	it { should respond_to(:address) }
	it { should respond_to(:latitude) }
	it { should respond_to(:longitude) }
	it { should be_valid }

	it { should belong_to(:category) }
	it { should have_many(:activity) }

	describe "when name isn't present" do
		before { @location.name = " " }
		it { should be_invalid }
	end

	describe "when category isn't present" do
		before { @location.category = nil }
		it { should be_invalid }
	end

	describe "when latitude is less than allowed" do
		before { @location.latitude = -90 }
		it { should be_invalid }
	end

	describe "when longitude is less than allowed" do
		before { @location.longitude = -180 }
		it { should be_invalid }
	end

	describe "when latitude is more than allowed" do
		before { @location.latitude = 91 }
		it { should be_invalid }
	end

	describe "when longitude is more than allowed" do
		before { @location.longitude = 181 }
		it { should be_invalid }
	end
end
