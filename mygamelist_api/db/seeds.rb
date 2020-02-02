# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
    Game.create(
        title: Faker::Game.title,
        views: 0,
        rating: 0,
        genre: Faker::Game.genre,
        description: Faker::Lorem.sentence,
        image: Faker::LoremFlickr.image


    )
end

puts "seeded database"

10.times do 
    User.create(
        username: Faker::FunnyName.name,
        password_digest: 'gold12',
        email: 'andrewk745@gmail.com'
    )
end

puts "seeded user"