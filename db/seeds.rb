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

=begin
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
=end

Category.create!(name: "Кухонная мебель")
  Subcategory.create!(name: "МДФ - покрытие ПВХ", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар МДФ - покрытие ПВХ",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                  Donec semper magna et ultricies semper. In maximus est a elit
                                  varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                  aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                  laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                  Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                  pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                  et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                  venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "МДФ - покрытие ПВХ"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ - покрытие ПВХ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ - покрытие ПВХ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ - покрытие ПВХ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар МДФ - покрытие ПВХ"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "HPL пластики ARPA  LEMARK MELATON Италия", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар HPL пластики ARPA  LEMARK MELATON Италия",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                      Donec semper magna et ultricies semper. In maximus est a elit
                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "HPL пластики ARPA  LEMARK MELATON Италия"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар HPL пластики ARPA  LEMARK MELATON Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар HPL пластики ARPA  LEMARK MELATON Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар HPL пластики ARPA  LEMARK MELATON Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар HPL пластики ARPA  LEMARK MELATON Италия"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Пластик Акриловый односторонний AGT глянцевый/ матовый Турция", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар Пластик Акриловый односторонний AGT глянцевый/ матовый Турция",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                          Donec semper magna et ultricies semper. In maximus est a elit
                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Пластик Акриловый односторонний AGT глянцевый/ матовый Турция"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Пластик Акриловый односторонний AGT глянцевый/ матовый Турция"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Пластик Акриловый односторонний AGT глянцевый/ матовый Турция"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Пластик Акриловый односторонний AGT глянцевый/ матовый Турция"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Пластик Акриловый односторонний AGT глянцевый/ матовый Турция"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                      Donec semper magna et ultricies semper. In maximus est a elit
                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Эко-плита CLEAF tss c термо-структурированной поверхностью Италия", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар Эко-плита CLEAF tss c термо-структурированной поверхностью Италия",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                          Donec semper magna et ultricies semper. In maximus est a elit
                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Эко-плита CLEAF tss c термо-структурированной поверхностью Италия"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Эко-плита CLEAF tss c термо-структурированной поверхностью Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Эко-плита CLEAF tss c термо-структурированной поверхностью Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Эко-плита CLEAF tss c термо-структурированной поверхностью Италия"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Эко-плита CLEAF tss c термо-структурированной поверхностью Италия"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Эмаль двух-компонентная Поверхность устойчивая к износу", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар Эмаль двух-компонентная Поверхность устойчивая к износу",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                              Donec semper magna et ultricies semper. In maximus est a elit
                                              varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                              aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                              laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                              Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                              pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                              et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                              venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Эмаль двух-компонентная Поверхность устойчивая к износу"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Эмаль двух-компонентная Поверхность устойчивая к износу"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Эмаль двух-компонентная Поверхность устойчивая к износу"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Эмаль двух-компонентная Поверхность устойчивая к износу"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Эмаль двух-компонентная Поверхность устойчивая к износу"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Массив Россия. Берёза-дуб", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар Массив Россия. Берёза-дуб",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                  Donec semper magna et ultricies semper. In maximus est a elit
                                                  varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                  aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                  laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                  Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                  pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                  et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                  venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Массив Россия. Берёза-дуб"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Массив Россия. Берёза-дуб"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Массив Россия. Берёза-дуб"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Массив Россия. Берёза-дуб"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Массив Россия. Берёза-дуб"),
                          image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "МДФ покрытие, ПВХ пленка", category: Category.find_by(name: "Кухонная мебель"))
    Item.create!(title: "Товар МДФ покрытие, ПВХ пленка",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                      Donec semper magna et ultricies semper. In maximus est a elit
                                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "МДФ покрытие, ПВХ пленка"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ покрытие, ПВХ пленка"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ покрытие, ПВХ пленка"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ покрытие, ПВХ пленка"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар МДФ покрытие, ПВХ пленка"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Корпусная мебель, шкафы купе")
  Subcategory.create!(name: "Стандартные шкафы", category: Category.find_by(name: "Корпусная мебель, шкафы купе"))
    Item.create!(title: "Товар Стандартные шкафы",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Стандартные шкафы"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Стандартные шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Стандартные шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Стандартные шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Стандартные шкафы"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Заказная программа", category: Category.find_by(name: "Корпусная мебель, шкафы купе"))
    Item.create!(title: "Товар Заказная программа",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                              Donec semper magna et ultricies semper. In maximus est a elit
                                                              varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                              aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                              laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                              Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                              pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                              et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                              venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Заказная программа"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Заказная программа"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Заказная программа"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Заказная программа"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Заказная программа"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Программа эконом", category: Category.find_by(name: "Корпусная мебель, шкафы купе"))
    Item.create!(title: "Товар Программа эконом",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                  Donec semper magna et ultricies semper. In maximus est a elit
                                                                  varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                  aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                  laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                  Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                  pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                  et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                  venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Программа эконом"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Программа эконом"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Программа эконом"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Программа эконом"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Программа эконом"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Мягкая мебель")
  Subcategory.create!(name: "Диваны", category: Category.find_by(name: "Мягкая мебель"))
    Item.create!(title: "Товар Диваны",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                      Donec semper magna et ultricies semper. In maximus est a elit
                                                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Диваны"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Диваны"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Диваны"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Диваны"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Диваны"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Кресла", category: Category.find_by(name: "Мягкая мебель"))
    Item.create!(title: "Товар Кресла",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Кресла"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Кресла"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кресла"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кресла"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Кресла"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Кровати", category: Category.find_by(name: "Мягкая мебель"))
    Item.create!(title: "Товар Кровати",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                              Donec semper magna et ultricies semper. In maximus est a elit
                                                                              varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                              aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                              laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                              Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                              pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                              et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                              venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Кровати"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Кровати"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Детские")
  Subcategory.create!(name: "Кровати", category: Category.find_by(name: "Детские"))
    Item.create!(title: "Товар Кровати",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                  Donec semper magna et ultricies semper. In maximus est a elit
                                                                                  varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                  aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                  laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                  Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                  pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                  et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                  venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Кровати"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кровати"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Кровати"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Шкафы", category: Category.find_by(name: "Детские"))
    Item.create!(title: "Товар Шкафы",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                      Donec semper magna et ultricies semper. In maximus est a elit
                                                                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Шкафы"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Шкафы"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Шкафы"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Столовые группы")
  Subcategory.create!(name: "Классика", category: Category.find_by(name: "Столовые группы"))
    Item.create!(title: "Товар Классика",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Классика"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Классика"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Классика"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Классика"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Классика"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Модерн", category: Category.find_by(name: "Столовые группы"))
    Item.create!(title: "Товар Модерн",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Модерн"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Модерн"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Модерн"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Модерн"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Модерн"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Кухонные уголки", category: Category.find_by(name: "Столовые группы"))
    Item.create!(title: "Товар Кухонные уголки",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Кухонные уголки"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Кухонные уголки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кухонные уголки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Кухонные уголки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Кухонные уголки"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Скиналь кухонные фартухи из стекла")
  Subcategory.create!(name: "МДФ с Фото печатью", category: Category.find_by(name: "Скиналь кухонные фартухи из стекла"))
    Item.create!(title: "Товар МДФ с Фото печатью",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "МДФ с Фото печатью"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ с Фото печатью"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ с Фото печатью"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар МДФ с Фото печатью"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар МДФ с Фото печатью"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Фото печать на стекле", category: Category.find_by(name: "Скиналь кухонные фартухи из стекла"))
    Item.create!(title: "Товар Фото печать на стекле",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                              Donec semper magna et ultricies semper. In maximus est a elit
                                                                                              varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                              aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                              laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                              Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                              pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                              et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                              venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Фото печать на стекле"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Фото печать на стекле"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото печать на стекле"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото печать на стекле"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Фото печать на стекле"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Калькулятор стоимости", category: Category.find_by(name: "Скиналь кухонные фартухи из стекла"))
    Item.create!(title: "Товар Калькулятор стоимости",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                  Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                  varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                  aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                  laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                  Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                  pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                  et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                  venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Калькулятор стоимости"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Калькулятор стоимости"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Калькулятор стоимости"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Калькулятор стоимости"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Калькулятор стоимости"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Камень, каменные столешницы, подоконники")
  Subcategory.create!(name: "Фото готовых работ СТОЛЕШНИЦЫ", category: Category.find_by(name: "Камень, каменные столешницы, подоконники"))
    Item.create!(title: "Товар Фото готовых работ СТОЛЕШНИЦЫ",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                      Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                      varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                      aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                      laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                      Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                      pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                      et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                      venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Фото готовых работ СТОЛЕШНИЦЫ"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ СТОЛЕШНИЦЫ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ СТОЛЕШНИЦЫ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ СТОЛЕШНИЦЫ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Фото готовых работ СТОЛЕШНИЦЫ"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Фото готовых работ Подоконники", category: Category.find_by(name: "Камень, каменные столешницы, подоконники"))
    Item.create!(title: "Товар Фото готовых работ Подоконники",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Фото готовых работ Подоконники"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Подоконники"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Подоконники"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Подоконники"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Фото готовых работ Подоконники"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Фото готовых работ Другое", category: Category.find_by(name: "Камень, каменные столешницы, подоконники"))
    Item.create!(title: "Товар Фото готовых работ Другое",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Фото готовых работ Другое"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Другое"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Другое"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Фото готовых работ Другое"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Фото готовых работ Другое"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Бытовая техника")
  Subcategory.create!(name: "Духовки", category: Category.find_by(name: "Бытовая техника"))
    Item.create!(title: "Товар Духовки",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Духовки"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Духовки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Духовки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Духовки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Духовки"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Варочные поверхности", category: Category.find_by(name: "Бытовая техника"))
    Item.create!(title: "Товар Варочные поверхности",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Варочные поверхности"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Варочные поверхности"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Варочные поверхности"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Варочные поверхности"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Варочные поверхности"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Вытяжки", category: Category.find_by(name: "Бытовая техника"))
    Item.create!(title: "Товар Вытяжки",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Вытяжки"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Вытяжки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Вытяжки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Вытяжки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Вытяжки"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
Category.create!(name: "Фурнитура, наполнение")
  Subcategory.create!(name: "Авентос БЛЮМ", category: Category.find_by(name: "Фурнитура, наполнение"))
    Item.create!(title: "Товар Авентос БЛЮМ",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Авентос БЛЮМ"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Авентос БЛЮМ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Авентос БЛЮМ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Авентос БЛЮМ"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Авентос БЛЮМ"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Хеттих", category: Category.find_by(name: "Фурнитура, наполнение"))
    Item.create!(title: "Товар Хеттих",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Хеттих"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Хеттих"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Хеттих"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Хеттих"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Хеттих"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Дорвел наполнение для шкафов", category: Category.find_by(name: "Фурнитура, наполнение"))
    Item.create!(title: "Товар Дорвел наполнение для шкафов",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Дорвел наполнение для шкафов"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Дорвел наполнение для шкафов"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Дорвел наполнение для шкафов"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Дорвел наполнение для шкафов"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Дорвел наполнение для шкафов"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))
  Subcategory.create!(name: "Мойки", category: Category.find_by(name: "Фурнитура, наполнение"))
    Item.create!(title: "Товар Мойки",
                 description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                                                                          Donec semper magna et ultricies semper. In maximus est a elit
                                                                                                          varius porttitor. Nunc vitae sapien facilisis, egestas magna sed,
                                                                                                          aliquet erat. Quisque nunc orci, gravida eu bibendum efficitur,
                                                                                                          laoreet sed ligula. Fusce varius fermentum nulla eu posuere.
                                                                                                          Pellentesque vel volutpat enim, semper sodales dui. Aenean cursus
                                                                                                          pharetra ultrices. Praesent sed odio nulla. Nunc sit amet risus
                                                                                                          et nulla consequat malesuada vel eu mauris. Fusce turpis nibh,
                                                                                                          venenatis ac sapien ac, tempor dapibus mi.",
                 subcategory: Subcategory.find_by(name: "Мойки"),
                 price: 10000)
    Picture.create!(imageable: Item.find_by(title: "Товар Мойки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux1.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Мойки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux2.jpg"))
    Picture.create!(imageable: Item.find_by(title: "Товар Мойки"),
                    image: File.new("#{Rails.root}/app/assets/images/kux3.jpg"))
    ItemColor.create!(item: Item.find_by(title: "Товар Мойки"),
                      image: File.new("#{Rails.root}/app/assets/images/color.png"))





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

