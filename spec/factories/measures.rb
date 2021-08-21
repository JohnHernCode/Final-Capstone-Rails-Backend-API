# frozen_string_literal: true

FactoryBot.define do
  factory :measure do
    result { Faker::Number.number(digits: 2) }
    subject_id { Faker::Number.between(from: 1, to: 20) }
    user_id { 1 }
    date { Faker::Date.backward(days: 6) }
  end
end
