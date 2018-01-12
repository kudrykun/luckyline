Gallery.delete_all
Item.delete_all
Category.delete_all
Opinion.delete_all
Picture.all.each do |picture|
  picture.image.destroy
  picture.destroy
end

opinions_number = 5

catalog = Category.create!(title: 'catalog', header: 'catalog header', description:"catalog description")
discount = Category.create!(title: 'discount', header: 'discount header', description: "discount description")
3.times do |i|
  pic = Picture.create!(image: File.new("#{Rails.root}/app/assets/images/other/category.png"))
  Category.create(title: "discount category #{i}",
                  header: 'discount category header',
                  description:"discount category description",
                  parent_id: discount.id,
                  preview: pic)
  pic = Picture.create!(image: File.new("#{Rails.root}/app/assets/images/other/gallery.png"))
  Gallery.create(title: "discount gallery #{i}",
                  header: 'discount gallery header',
                  description:"discount gallery description",
                  category_id: discount.id,
                  preview: pic)
  pic = Picture.create!(image: File.new("#{Rails.root}/app/assets/images/other/product.png"))
  Item.create(title: "discount item #{i}",
                 header: 'discount item header',
                 description:"discount item description",
                 category_id: discount.id,
                 preview: pic)
end


opinions_number.times do
  Opinion.create!(name: 'Имя',
                  text: Faker::Hipster.paragraphs(rand(1) + 1),
                  created_at: Faker::Date.between(60.days.ago, Date.today),
                  vk: "",
                  ok:"")
end