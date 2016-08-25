require 'faker'

# Create Users
5.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(10)
  )
end

@users = User.all

# Create Items
20.times do
  Item.create!(
  user: @users.sample,
  name: Faker::Lorem.sentence
  )
end

puts "#{User.count} users created."
puts "#{Item.count} items created."
