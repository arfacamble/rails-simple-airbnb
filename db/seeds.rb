# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting flats'
Flat.destroy_all

puts 'making 5 flats'
5.times do
  Flat.create!(
    name: Faker::Construction.material + ' ' + Faker::Military.army_rank,
    address: Faker::Military.dod_paygrade + ' ' + Faker::Military.coast_guard_rank,
    description: Faker::Hipster.paragraph(sentence_count: 2),
    price_per_night: rand(40..100),
    number_of_guests: rand(1..5)
  )
end
