FactoryBot.define do
  factory :weight do
  	
    value {Faker::Number.decimal(2)}
    weight_date {Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}
    user
    diet
  end
end
