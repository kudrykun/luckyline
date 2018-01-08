Opinion.delete_all

opinions_number = 5

opinions_number.times do
  Opinion.create!(name: 'Имя',
                  text: Faker::Hipster.paragraphs(rand(1) + 1),
                  created_at: Faker::Date.between(60.days.ago, Date.today),
                  vk: "",
                  ok:"")
end