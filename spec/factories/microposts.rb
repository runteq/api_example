FactoryBot.define do
  factory :micropost do
    user
    content { Faker::Lorem.sentences }
  end
end
