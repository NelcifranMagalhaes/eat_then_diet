FactoryBot.define do
  factory :user do
    email {Faker::Internet.email}
    password 'deidarasenpai'
    password_confirmation 'deidarasenpai'
  end
end
