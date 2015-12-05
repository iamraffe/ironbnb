# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  # Commented introductory code

flat_list = [
  [ "Sunny terrace", "Madrid", "John Lennon", "One bedroom, one bathroom, this amazing flat has a huge terrace to drink tea. Pets allowed!", 100],
  [ "Cozy Studio", "Barcelona", "Ringo Starr", "One bedroom, one bathroom in the heart of the city, surrounded by cafes and hip bars", 90],
  [ "Huge bungalow in the woods", "Pontevedra", "George Harrison", "Huge bungalow with a nice fireplace in the living room. A very nice place to read!", 80],
  [ "House with a pool 4r 3b", "Málaga", "Paul McCartney", "Modern house with endless pool in the most exclusive neighborhood", 150]
]

flat_list.each do |title, city, owner, description, price, pic_url|
  f = Flat.create( title: title, city: city, owner: owner, description: description, price: price)
  f.picture_url = File.open("#{Rails.root}/public/system/seeds/#{f.id}.jpg")
  f.save!
end
