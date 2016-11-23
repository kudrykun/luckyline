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
Category.delete_all
NewsItem.delete_all
Opinion.delete_all

Category.create!(title: "Кухонная мебель",is_items: true)
  Category.find_by(title:"Кухонная мебель").items.create!(
      title: 'МДФ - покрытие ПВХ',
      description: 'Наиболее доступным и недорогим вариантом оформления кухни
      является изготовление мебели из МДФ, покрытой пленкой ПВХ. Сам процесс
      изготовления МДФ плиты с пленкой достаточно прост и экономичен: плита
      ламинируется на клеевой основе под большим прессом. Так получаются красивые
      разноцветные фасады самых разнообразных фактур и цветов: и под дерево, и
      просто однотонные. Богатый выбор расцветок позволит подобрать кухни МДФ с
      пленкой под любой, даже самый изысканный, дизайн интерьера. По сравнению с
      эмалью, пленка более устойчива к чистящим средствам, так что такую кухню можно
      будет без сомнений отмывать абразивными щетками и не бояться повредить
      поверхность. Пленка устойчива ко всем видам механических повреждений, так что
      на такую столешницу можно и чайник с плиты поставить, и что-то уронить, и нечаянно
      задеть кухонным ножом – ничего с покрытием не случится. Более того, фасад кухни
      МДФ-пленка стоек к стиранию: со временем плита не потеряет своей фактурности
      и яркости цвета, если, конечно, не будет находиться под прямыми солнечными лучами.',
      price: 'Матовая - от 19 000 р. за 1 м/п <br>
              Глянцевая - от 20 100 р. за 1 м/п <br>
              Металлик - перламутр - от 21 807 р. за 1 м/п <br><br>
              В стоимость входит: <br>
              <ol>
                <li>Столешница пластик H=38 мм.</li>
                <li>Бортик пристеночный L=1000 мм.</li>
                <li>Цоколь наполный пластиковый L=1000 мм.</li>
                <li>Стол нижний 2-х дверный H=820 мм. Ширина 1000 мм.</li>
                <li>Шкаф верхний H=720 мм. Ширина 500 мм. - 2шт</li>
              </ol>')
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-1.jpg"))
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-2.jpg"))
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-3.jpg"))
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-4.jpg"))
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-5.jpg"))
  Item.find_by(title:'МДФ - покрытие ПВХ').pictures.create!(image: File.new("#{Rails.root}/app/assets/images/mdf-6.jpg"))
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "HPL пластики ARPA  LEMARK MELATON Италия")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "Пластик Акриловый односторонний AGT глянцевый/ матовый Турция")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "Лакированный МДФ двухсторонний ALVIC LUXE высокий глянец / матовый")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "Эко-плита CLEAF tss c термо-структурированной поверхностью Италия")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "Эмаль двух-компонентная Поверхность устойчивая к износу")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "Массив Россия. Берёза-дуб")
  Category.find_by(title:"Кухонная мебель").subs.create!(title: "МДФ покрытие, ПВХ пленка")


3.times do |i|
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


3.times do |i|
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

