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

	begin_date: Faker::Date.between(from: 2.years.ago, to: Date.today),
	end_date: Faker::Date.between(from: 2.years.ago, to: Date.today),
	weight: Faker::Number.between(from: 60.75, to: 200.30),
	height: Faker::Number.between(from: 1.2, to: 2.75),
	ideal_weight: Faker::Number.between(from: 60.25, to: 80.65),
	user_id: user1.id
    )

end


20.times do |index|
diet_id = Diet.pluck(:id).shuffle.first
	DietField.create!(
	schedule: Faker::Time.between(from: 60.days.ago, to: Date.today),
	description: Faker::Lorem.paragraph,
	meal: ["Dinner","Lunch","Snack","Breakfast"].sample,
	diet_id: diet_id
    )

end

40.times do |index|
	diet_id = Diet.pluck(:id).shuffle.first
	Weight.create!(
	value: Faker::Number.decimal(l_digits: 2),
	weight_date: Faker::Date.between(from: 2.years.ago, to: Date.today),
	user_id: user1.id,
	diet_id: diet_id
    )

end