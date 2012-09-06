require 'spec_helper'

describe Activity do
  before { @location = Activity.new(name: "Test Name", category: "Test Category", description: "Test Description") }

  subject { @location }

  it { should respond_to(:name) }
  it { should respond_to(:category) }
  it { should respond_to(:description) }
end
