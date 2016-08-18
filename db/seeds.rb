# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Artist.create(name: Faker::GameOfThrones.character, bio: Faker::Hipster.sentence)
  Genre.create(name: Faker::Book.genre)
end

10.times do
  Song.create(name: Faker::Hipster.word, artist_id: rand(1..5), genre_id: rand(1..5))
end
