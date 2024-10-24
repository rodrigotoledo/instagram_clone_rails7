company = Company.create(name: Faker::Company.name)
admin_test_user = User.create!(company: company, name: 'Admin test', email_address: 'admin@test.com', address: Faker::Address.full_address, avatar: Faker::Avatar.image, phone: Faker::PhoneNumber.cell_phone_with_country_code, username: 'admin_test', website: Faker::Internet.url,
password: 'aassdd123', password_confirmation: 'aassdd123')
user_main = User.create!(company: company, name: 'Rodrigo Toledo', email_address: 'faker@test.com', address: Faker::Address.full_address, avatar: Faker::Avatar.image, phone: Faker::PhoneNumber.cell_phone_with_country_code, username: 'rtoledo_dev', website: Faker::Internet.url,
password: 'aassdd123', password_confirmation: 'aassdd123')
10.times.each do
  Post.create!(user: user_main, title: Faker::Lorem.question, image: Faker::Avatar.image, caption: 'Lets build this faker instagram')
  Post.create!(user: admin_test_user, title: Faker::Lorem.question, image: Faker::Avatar.image, caption: 'Lets build this faker instagram')
end

20.times.each do
   user = User.create!(company: company, name: Faker::Name.name_with_middle, email_address: Faker::Internet.email, address: Faker::Address.full_address, avatar: Faker::Avatar.image, phone: Faker::PhoneNumber.cell_phone_with_country_code, username: Faker::Internet.username, website: Faker::Internet.url,
password: 'aassdd123', password_confirmation: 'aassdd123')
   10.times.each do
      Post.create(user: user, title: Faker::Lorem.question, image: Faker::Avatar.image, caption: 'Lets build this faker instagram')
   end
end
