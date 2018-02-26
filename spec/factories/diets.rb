FactoryBot.define do
  factory :diet do
    begin_date {Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}
    end_date {Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}
    weight {Faker::Number.decimal(2)}
    height	{Faker::Number.decimal(2)}
    ideal_weight {Faker::Number.decimal(2)}
    user
  end
end
