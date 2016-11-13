# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all
Picture.delete_all
ItemColor.delete_all
Item.delete_all
Subcategory.delete_all
Category.delete_all
NewsItem.delete_all
Opinion.delete_all

3.times do |i|
  Category.create!(name: "Категория ##{i}")

  3.times do |j|
    Subcategory.create!(name: "Подкатегория ##{i}#{j}", category: Category.find_by(name: "Категория ##{i}"))
    3.times do |k|
      Item.create!(title: "Товар ##{i}#{j}#{k}",
                   description: "№#{i} Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Donec semper magna et ultricies semper. In maximus est a elit
                                varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                venenatis ac sapien ac, tempor dapibus mi.",
                  subcategory: Subcategory.find_by(name: "Подкатегория ##{i}#{j}"),
                  price: 10000 + k)
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                      image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                      image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                      image: File.new("#{Rails.root}/app/assets/images/kux4.jpg"))
      Picture.create!(imageable: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                      image: File.new("#{Rails.root}/app/assets/images/kux5.jpg"))


      ItemColor.create!(item: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/color.png"))

      ItemColor.create!(item: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/color1.png"))
      ItemColor.create!(item: Item.find_by(title: "Товар ##{i}#{j}#{k}"),
                        image: File.new("#{Rails.root}/app/assets/images/color3.png"))
    end
  end
end


10.times do |i|
  NewsItem.create!(title: "Новость ##{i}",
                    text: "№#{i} Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Donec semper magna et ultricies semper. In maximus est a elit
                                varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                venenatis ac sapien ac, tempor dapibus mi.")

  Picture.create!(imageable: NewsItem.find_by(title: "Новость ##{i}"),
                  image: File.new("#{Rails.root}/app/assets/images/news1.jpg"))
  Picture.create!(imageable: NewsItem.find_by(title: "Новость ##{i}"),
                  image: File.new("#{Rails.root}/app/assets/images/news2.jpg"))
  Picture.create!(imageable: NewsItem.find_by(title: "Новость ##{i}"),
                  image: File.new("#{Rails.root}/app/assets/images/news3.jpg"))
  Picture.create!(imageable: NewsItem.find_by(title: "Новость ##{i}"),
                  image: File.new("#{Rails.root}/app/assets/images/news4.jpg"))
end


30.times do |i|
  Opinion.create!(name: "Отзыв ##{i}",
                  text: "№#{i} Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Donec semper magna et ultricies semper. In maximus est a elit
                                varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                venenatis ac sapien ac, tempor dapibus mi.",
                  info: "Info of opinion ##{i}",
                  order_number: 100+i)
end

3.times do |i|
  Order.create!(name: "Name ##{i}",
                  phone_number: "+7 916 770 48 6#{i}",
                  email: "email ##{i}")
end

