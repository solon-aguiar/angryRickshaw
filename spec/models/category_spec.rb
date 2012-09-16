require 'spec_helper'

describe Category do

	before { @category = Category.new(name: "Foo") }

	subject { @category }

	it { should respond_to(:name) }
	it { should be_valid }

	it { should have_many(:location) }

	describe "when name isn't present" do
		before { @category.name = " " }
		it { should be_invalid }
	end
end
