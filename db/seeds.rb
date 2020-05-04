# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#config

#ユーザー情報
# 500.times do |i|
#   name = Faker::Name.first_name
#   email = Faker::Internet.email(name: name)
#   password = Faker::Internet.password(min_length: 10, max_length: 20)
#   image_name = "default.jpg"
#   User.create!(
#     name: name,
#     email: email,
#     password: password,
#     image_name: image_name
#   )
# end
#
# #コミュニティー情報
# 100.times do |i|
#   name = "Commu for " + Faker::Movie.quote
#   content = name + " community description"
#   image_name = "default.jpg"
#   CommuIndex.create!(
#     name: name,
#     content: content,
#     image_name: image_name
#   )
# end
#
# #ユーザーのコミュ所属情報
# 400.times do |i|
#   commu_id = Faker::Number.between(from: 1, to: 100)
#   user_id = Faker::Number.between(from: 1, to: 500)
#   CommuUser.create!(
#     commu_id: commu_id,
#     user_id: user_id
#   )
# end
#
#
#サービス上の全投稿数
# 1000.times do |i|
#   content = Faker::Quotes::Rajnikanth.joke,
#   image_name ="default.jpg"
#   commu_id = Faker::Number.between(from: 1, to: 100)
#   user_id = Faker::Number.between(from: 1, to: 500)
#   protect = Faker::Number.between(from: 0, to: 1)
#   CommuPost.create!(
#     content: content,
#     image_name: image_name,
#     commu_id: commu_id,
#     user_id: user_id,
#     protect: protect
#   )
# end

500.times do |i|
  content = Faker::Quotes::Rajnikanth.joke,
  image_name ="default.jpg"
  commu_id = Faker::Number.between(from: 1, to: 100)
  user_id = Faker::Number.between(from: 1, to: 500)
  protect = Faker::Number.between(from: 0, to: 1)
  CommuPost.create!(
    content: content,
    image_name: image_name,
    commu_id: commu_id,
    user_id: user_id,
    protect: protect
  )
end

# 1000.times do |i|
#   post_id = Faker::Number.between(from: 1, to: 1000)
#   user_id = Faker::Number.between(from: 1, to: 500)
#   UserFavor.create!(
#     post_id: post_id,
#     user_id: user_id
#   )
# end
