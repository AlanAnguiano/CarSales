FactoryBot.define do
  factory :car do
    sequence(:name) { |n| "car #{n}" }
    model { 'pro' }
    brand { 'ford' }
    year { '2021' }
    price { 100 } 
    state { 'new' }
  end
end