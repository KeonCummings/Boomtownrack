namespace :grab_info do
  desc "Grab Tops Info From Cerato Boutique"
  task cerato_tops: :environment do
  require 'nokogiri'
  require 'open-uri'

  doc = Nokogiri::HTML(open("http://ceratoboutique.com/collections/tops"))

  prices = Array.new 
  description = Array.new
  brands = Array.new
  #sale_price = Array.new
  image_url = Array.new
  destination_url = Array.new

  prices = doc.xpath("//del").collect {|node| node.text.strip}
  description = doc.xpath("//div/a/h4").collect {|node| node.text.strip}
  brands = doc.xpath("//span[contains(@class,'vendor')]").collect {|node| node.text.strip}
  #sale_price = doc.xpath("//span[contains(@class, 'price')]/text()").collect {|node| node.text.strip}
  image_url = doc.xpath("//div/a/img/@src").collect {|node| node.text.strip}
  image_url.shift
  destination_url = doc.css('div.details a').map { |link| link['href'] }.collect 

  prices.zip(description, brands, image_url, destination_url).each do |prices, description, brands, image, url|
      Product.create(price: prices, description: description, brand: brands, image_url: image, destination_url: url, store: "Cerato Boutique", category: "tops")
    end
  end
 end
