FactoryGirl.define do
	factory :category do
		id 0
		name "Default Category"
	end

	factory :location do
		name "Test Location"
		description "Test Location Description"
		picture "http://www.valordoiptu.com/wp-content/uploads/2012/01/campo-grande1.jpg"
		address "Test Address"
		latitude -54.647759
		longitude 20.443505

		association :category
	end

	factory :activity do
		name "Test Activity"
		association :location
	end
end