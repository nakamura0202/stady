# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  User.create(email: Forgery('email').address,
  password: Forgery(:basic).password,
  name: Forgery('internet').user_name,
  )
end

n = 1
while n <= 100
  Blog.create(
    title: "title#{n}",
    content: "content#{n}",
    user_id: n
  )
  n = n + 1
end