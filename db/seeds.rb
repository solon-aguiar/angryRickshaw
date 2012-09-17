# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(name: "Shopping")
c2 = Category.create(name: "Restaurant")
Location.create(name: "Commercial Street", description: "It's a commercial street", picture: "http://www.placehold.it/150x150", address: "Commercial St", latitude: 12.9819369, longitude: 77.6089657, category: c1)
Location.create(name: "UB City Mall", description: "It's a fancy mall", picture: "http://www.placehold.it/150x150", address: "MG Road", latitude: 12.9715987, longitude: 12.9715987, category: c1)
Location.create(name: "Java Restaurant", description: "The worst service ever", picture: "http://www.placehold.it/150x150", address: "Diamond District", latitude: 12.9589757, longitude: 77.64416109, category: c2)
Location.create(name: "Barbeque Nation", description: "It's a good place to eat spicy meat", picture: "http://www.placehold.it/150x150", address: "100 Feat Road", latitude: 12.9619782, longitude: 77.6413672, category: c2)

