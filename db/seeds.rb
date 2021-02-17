# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting flats'
Flat.destroy_all

photos = [
  'https://images.unsplash.com/photo-1569597967185-cd6120712154?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80',
  'https://images.unsplash.com/photo-1517385846632-80596fa3ae4a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1572962207482-745e51c5117e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=916&q=80',
  'https://images.unsplash.com/photo-1556228149-d8f523f77b5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1580023786285-0d8ab0091671?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=938&q=80',
  'https://images.unsplash.com/photo-1577212766566-a80ededae31f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=707&q=80'
]

puts 'making 5 flats'
5.times do
  Flat.create!(
    name: Faker::Construction.material + ' ' + Faker::Military.army_rank,
    address: Faker::Military.dod_paygrade + ' ' + Faker::Military.coast_guard_rank,
    description: Faker::Hipster.paragraph(sentence_count: 2),
    price_per_night: rand(40..100),
    number_of_guests: rand(1..5),
    image_url: photos.sample
  )
end
