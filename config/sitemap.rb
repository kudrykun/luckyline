# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://lucky-line-mebel.ru"

SitemapGenerator::Sitemap.create do
  add contacts_path
  add catalog_path, :priority => 0.7
  add opinions_path, :priority => 0.7
  add news_items_path, :priority => 0.4
  NewsItem.find_each do |news_item|
    add news_item_path(news_item), :lastmod => news_item.updated_at, :priority => 0.4
  end
  Category.find_each do |category|
    add subs_and_items_path(category), :lastmod => category.updated_at, :priority => 0.8
  end
  Item.find_each do |item|
    add show_item_path(item), :lastmod =>  item.updated_at, :priority => 0.9
  end
  Gallery.find_each do |gallery|
    add show_gallery_path(gallery), :lastmod => gallery.updated_at, :priority => 0.8
  end

end
