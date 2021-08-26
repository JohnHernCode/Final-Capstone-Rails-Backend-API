FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    password_digest { 'testinghouse' }
    admin { false }
  end
end
