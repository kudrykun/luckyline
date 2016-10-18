# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.delete_all
ItemColor.delete_all
Item.delete_all
Subcategory.delete_all
Category.delete_all
NewsItem.delete_all
Opinion.delete_all

3.times do |i|
  Category.create!(name: "Категория ##{i}")

  2.times do |j|
    Subcategory.create!(name: "Подкатегория ##{i}#{j}", category: Category.find_by(name: "Категория ##{i}"))
    2.times do |k|
      Item.create!(title: "Товар ##{i}#{j}#{k}",
                   description: "Description for item ##{i}",
                  subcategory: Subcategory.find_by(name: "Подкатегория ##{i}#{j}"))
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/image.png"))

      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/image1.jpg"))

      ItemColor.create!(item: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/color.png"))

      ItemColor.create!(item: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/color1.png"))
    end
  end
end

3.times do |i|
  NewsItem.create!(title: "Новость ##{i}",
                    text: "Description for NewsItem ##{i}")
  2.times do
  Picture.create!(imageable: NewsItem.find_by(title: "Новость ##{i}"),
                  image: File.new("#{Rails.root}/app/assets/images/newsitem.png"))
  end
end

3.times do |i|
  Opinion.create!(name: "Отзыв ##{i}",
                  text: "Text of opinion ##{i}",
                  info: "Info of opinion ##{i}")
end

3.times do |i|
  Order.create!(name: "Name ##{i}",
                  phone_number: "+7 916 770 48 6#{i}",
                  email: "email ##{i}")
end
