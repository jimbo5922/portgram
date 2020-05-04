FactoryBot.define do
  factory :user do
    sequence(:id) { |n| "#{n}" }
    sequence(:name) { |n| "テストユーザ#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { "password" }
    password_digest { "password" }
    usericon { "yuigahama.jpg" }
  end
end