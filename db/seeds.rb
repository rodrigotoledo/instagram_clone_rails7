company = Company.create(name: Faker::Company.name)
user = User.create(company: company, name: 'Rodrigo Toledo', email: 'faker@test.com', address: Faker::Address.full_address, avatar: Faker::Avatar.image, phone: Faker::PhoneNumber.cell_phone_with_country_code, username: 'rtoledo_dev', website: Faker::Internet.url, password: 'aassdd', password_confirmation: 'aassdd')
10.times.each do
  Post.create(user: user, title: Faker::Lorem.question, image: Faker::Avatar.image, caption: 'Lets build this faker instagram')
end

19.times.each do
   user = User.create(company: company, name: Faker::Name.name_with_middle, email: Faker::Internet.email, address: Faker::Address.full_address, avatar: Faker::Avatar.image, phone: Faker::PhoneNumber.cell_phone_with_country_code, username: Faker::Internet.username, website: Faker::Internet.url, password: 'aassdd', password_confirmation: 'aassdd')
   10.times.each do
      Post.create(user: user, title: Faker::Lorem.question, image: Faker::Avatar.image, caption: 'Lets build this faker instagram')
   end
end