# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Admin', password:'Admin', email: 'lin1ood@gmail.com')
User.create(username: 'Will', password:'Will', email: 'will@gmail.com')


10.times do
  Provider.create(
    name: Faker::Name.name,
    category: Faker::Commerce.department,
    cell_phone: Faker::PhoneNumber.cell_phone,
    available: true,
    company: Faker::Company.name,
    address: Faker::Address,
    url: Faker::Company.logo,
    user_id: 1,
    vetted: true,
  )
end

10.times do
  Comment.create(
    provider_id: 1,
    comment: Faker::Lorem.paragraph,
    rank: 3
  )
end
