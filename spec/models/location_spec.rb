require 'spec_helper'

describe Location do
	before {
		@location = Location.new(name: "Test Name",
								 description: "Test Description",
								 picture: "http://www.valordoiptu.com/wp-content/uploads/2012/01/campo-grande1.jpg",
								 address: "Test",
								 latitude: -54.647759,
								 longitude: 20.443505)
	}

	subject { @location }

	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:picture) }
	it { should respond_to(:address) }
	it { should respond_to(:latitude) }
	it { should respond_to(:longitude) }
	it { should be_valid }

	it { should belong_to(:category) }

	describe "when name isn't present" do
		before { @location.name = " " }
		it { should be_invalid }
	end

	describe "when latitude isn't present" do
		before { @location.latitude = " " }
		it { should be_invalid }
	end

	describe "when longitude isn't present" do
		before { @location.longitude = " " }
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
