User.create!(name: "テストユーザ", email: "test@test.com", password: "testtest", password_confirmation: "testtest")

19.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end

users = User.all
user = users.first
following = users[2..15]
followers = users[3..10]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }