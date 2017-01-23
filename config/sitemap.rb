# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://lucky-line-mebel.ru"

SitemapGenerator::Sitemap.create do
  add contacts_show_path
  add catalog_path, :priority => 0.7
  add opinions_path, :priority => 0.7
  add news_items_path, :priority => 0.7
  NewsItem.find_each do |news_item|
    add news_item_path(news_item), :lastmod => news_item.updated_at, :priority => 0.8
  end
  Category.find_each do |category|
    add subs_and_items_path(category), :lastmod => category.updated_at, :priority => 0.6
  end
  Item.find_each do |item|
    add show_category_item_path(item.category,item), :lastmod =>  item.updated_at, :priority => 0.9
  end
  Gallery.find_each do |gallery|
    add show_category_gallery_path(gallery.category,gallery), :lastmod => gallery.updated_at, :priority => 0.8
  end

end