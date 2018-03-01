FactoryBot.define do
  factory :diet_field do
    schedule "2018-02-27 10:35:44"
    description Faker::Lorem.paragraph
    meal ["Dinner","Lunch","Snack","Breakfast"].sample
    diet
  end
end
