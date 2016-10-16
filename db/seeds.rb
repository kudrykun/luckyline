# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ItemImage.delete_all
ItemColor.delete_all
Item.delete_all

5.times do |i|
  Item.create!(title: "Title for item ##{i}",
               description: "Description for item ##{i}")
  ItemImage.create!(item: Item.find_by(title: "Title for item ##{i}"),
                                 image: File.new("#{Rails.root}/app/assets/images/image.png"))

  ItemImage.create!(item: Item.find_by(title: "Title for item ##{i}"),
                    image: File.new("#{Rails.root}/app/assets/images/image1.jpg"))

  ItemColor.create!(item: Item.find_by(title: "Title for item ##{i}"),
                                 image: File.new("#{Rails.root}/app/assets/images/color.png"))

  ItemColor.create!(item: Item.find_by(title: "Title for item ##{i}"),
                    image: File.new("#{Rails.root}/app/assets/images/color1.png"))
end

2.times do |i|
  Item.create!(title: "Title for item ##{i+5}",
               description: "Description for item ##{i+5}")
end