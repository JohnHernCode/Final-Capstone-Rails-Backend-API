# frozen_string_literal: true

FactoryBot.define do
  factory :subject do
    title { Faker::Educator.subject }
    unit { Faker::Educator.subject }
    icon { Faker::Hacker.noun }
    target { 1 }
  end
end
