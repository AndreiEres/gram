# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    provider { "github" }
    sequence(:uid) { |n| n }
    email { "user@email.com" }
    name { "user" }
    image { "user.png" }
  end
end
