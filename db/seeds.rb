# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Levani Maisouradze",
             email: "lmaisour@gmail.com",
             password:              "doberman",
             password_confirmation: "doberman",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

#dummy seed data with faker gem to create 99 profiles

15.times do |n|
  name  = Faker::Name.name
  image = Faker::Avatar.image
  email = "user#{n+1}@socasion.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               avatar_file_name: image,
               activated: true,
               activated_at: Time.zone.now,
               admin: false,
               activated: true,
               )
end

users = User.all
6.times do
  title = Faker::Lorem.sentence(word_count=4)
  description = Faker::Company.catch_phrase
  whenz = Faker::Time.between(4.weeks.ago, Time.now, :all)
  location = Faker::Address.street_address	
  users.each do |x|
  	x.events.create!(title: title, 
  					 description: description,
  					 whenz: whenz,
  					 location: location
  					)
  end
end
