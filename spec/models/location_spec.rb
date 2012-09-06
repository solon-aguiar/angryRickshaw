require 'spec_helper'

describe Location do
  before {
	  @location = Location.new(name: "Test Name",
							   category: "Test Category",
							   description: "Test Description",
							   picture: "http://www.valordoiptu.com/wp-content/uploads/2012/01/campo-grande1.jpg",
							   address: "Test",
							   latitude: -54.647759,
							   longitude: 20.443505)
  }

  subject { @location }

  it { should respond_to(:name) }
  it { should respond_to(:category) }
  it { should respond_to(:description) }
  it { should respond_to(:picture) }
  it { should respond_to(:address) }
  it { should respond_to(:latitude) }
  it { should respond_to(:longitude) }
end
