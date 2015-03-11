# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    postal_code: Faker::Address.postcode,
    campus: Faker::Address.city,
    bio: Faker::Hacker.say_something_smart,
    )
end

20.times do
  Post.create(
    title: Faker::App.name,
    content: Faker::Lorem.paragraphs(2),
    user_id: Faker::Number.number(2)
    )
end

# 20.times do
#   Job.create(
#     company: Faker::App.name,
#     location: Faker::Address.city,
#     description: Faker::Lorem.paragraphs(2),
#     contact: Faker::Name.name,
#     job_title: Faker::Lorem.word,
#     user_id: Faker::Number.number(2)
#     )
# end