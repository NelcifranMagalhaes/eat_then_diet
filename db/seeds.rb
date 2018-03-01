# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Diet.destroy_all
DietField.destroy_all
Weight.destroy_all
User.destroy_all



puts "Deleted Diets"
puts "Deleted Users"
puts "Deleted Diet Fields"

user1 = User.create(email: 'deidara@gmail.com' ,password: '123456')
user2 = User.create( email: 'sasuke@gmail.com' ,password: '123456')

5.times do |index|
	Diet.create!(

	begin_date: Faker::Date.between(2.years.ago, Date.today),
	end_date: Faker::Date.between(2.years.ago, Date.today),
	weight: Faker::Number.between(60.75, 200.30),
	height: Faker::Number.between(1.2, 2.75),
	ideal_weight: Faker::Number.between(60.25, 80.65),
	user_id: 1
    )

end

20.times do |index|
	DietField.create!(

	schedule: Faker::Time.between(60.days.ago, Date.today, :all),
	description: Faker::Lorem.paragraph,
	meal: ["Dinner","Lunch","Snack","Breakfast"].sample,
	diet_id: Faker::Number.between(1,5)

    )

end

40.times do |index|
	Weight.create!(

	value: Faker::Number.decimal(2),
	weight_date: Faker::Date.between(2.years.ago, Date.today),
	user_id: 1,
	diet_id: Faker::Number.between(1,5)

    )

end