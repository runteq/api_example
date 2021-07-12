FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) { |n| "user+#{n}@example.com" }
    password { '12345678' }
    password_confirmation { '12345678' }
    introduction { Faker::Lorem.sentences }
  end
end
