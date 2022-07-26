module HomeHelper
  def suggestion
    {
      avatar: Faker::Avatar.image,
      address: Faker::Address.full_address,
      company_name: Faker::Company.name,
      dob: Time.now,
      email: Faker::Internet.email,
      id: rand(100),
      name: Faker::Name.first_name,
      phone: Faker::PhoneNumber.cell_phone_with_country_code,
      username: Faker::Internet.username,
      website: Faker::Internet.url
    }
  end

  def post
    {
      id: rand(10000),
      username: Faker::Internet.username,
      user_image: Faker::Avatar.image,
      image: Faker::LoremFlickr.image,
      caption: "Subscribe now!"
    }
  end
end
