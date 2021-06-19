FactoryBot.define do
  factory :dealership do
    sequence(:name) { |n| "testname #{n}" }
  end
end