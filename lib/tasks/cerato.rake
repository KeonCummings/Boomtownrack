namespace :tops do
  desc "Grab Tops Info From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_tops = "http://ceratoboutique.com/collections/tops"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_tops)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "tops")
    end
  end
end

namespace :accessories do
  desc "Grab accesories From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_accessories = "http://ceratoboutique.com/collections/accessories"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_accessories)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "accessories")
    end
  end
end

namespace :jewelry do
  desc "Grab jewelry From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_jewelry = "http://ceratoboutique.com/collections/jewelry"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_jewelry)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "jewelry")
    end
  end
end

namespace :dresses do
  desc "Grab dresses From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'


  cerato_dresses = "http://ceratoboutique.com/collections/dresses"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_dresses)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "dresses")
    end
  end
end

namespace :sweaters do
  desc "Grab sweaters From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_sweaters = "http://ceratoboutique.com/collections/sweaters"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_sweaters)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "sweaters")
    end
  end
end

namespace :jackets do
  desc "Grab jackets From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_jackets = "http://ceratoboutique.com/collections/jackets"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_jackets)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

  prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "jackets")
    end
  end
end

namespace :pants do
  desc "Grab pants From Cerato Boutique"

  task cerato: :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'mechanize'

  cerato_pants = "http://ceratoboutique.com/collections/pants"
  scrape = ScraperAttributesHelper::Scraper.new(cerato_pants)

  scrape.prices('del')
  prices = scrape.deliver
  scrape.reset

  scrape.images('#collection img')
  images = scrape.deliver
  scrape.reset

  scrape.description('.title')
  description = scrape.deliver
  scrape.reset

  scrape.brands('.vendor')
  brands = scrape.deliver
  scrape.reset

  scrape.product_url('.details a')
  url = scrape.deliver
  scrape.reset

    prices.zip(images, description, brands, url).each do |prices, images, description, brands, url, |
      Product.create(price: prices, description: description, brand: brands, image_url: images, destination_url: url, store: "Cerato Boutique", category: "pants")
    end
  end
end
