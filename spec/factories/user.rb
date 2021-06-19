FactoryBot.define do
  factory :user do
    name { 'botAdmin' }
    sequence(:email) { |n| "admin#{n}@testmail.com" }
    admin { true }
    password { 'admintest123' }
    password_confirmation { 'admintest123' }
  end
end