# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all

50.times do |index|
  Album.create!(name: Faker::Music.album,
    genre: Faker::Music.genre)
end
 
  # year 
  # genre


#   Spice.destroy_all

# 50.times do |index|
#   Spice.create!(name: Faker::Food.spice,
#                         description: Faker::Lorem.sentence(2, false, 0).chop,
#                         image_url: "site.com/here_is_a_picture_of_cardamom.jpg")
# end

# p "Created #{Spice.count} spices"