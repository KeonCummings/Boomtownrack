# desc "Import wish list"
#task :import_list => :environment do
  require 'mechanize'
  require 'nokogiri'

   # agent = Mechanize.new
  
   # url = ("http://zamrie.com/collections/tops")
   # doc = Nokogiri::HTML(open(url))
   # page = agent.get(url)
  
  class Scraper
    def initialize(url)
     @node_set = Array.new
     @agent = Mechanize.new
     # @doc = Nokogiri::HTML(open(url))
     @page = @agent.get(url)
   end

   # def set_page(url)
     
   # end

    def scrape(web_section)
      @node_set = @page.search(web_section)
      @node_set.each do |node|
        #node.attributes[attributes]
      end

      print @node_set[1]
    end
  end

  another_page = true
  page_num = 1



 # prices = page.search("#collection img")
 #  prices.each do |image|
 #     prices.push(image.attributes['src']) 
 #   end 

  #while another_page == true
  # agent.page.search('#mr-product-list img').each do |image|
  #  puts image
  # end
    # movie_url = movie_link.attr('href')
    # movie_page = agent.get("#{movie_url}")
    # critics = movie_page.search('div#reviews div.quote_bubble')
    # reviews_array = []
    # critics.each do |critic|
    #   name = critic.css('div.media_block_content div.bold')
    #   name = name.text.strip
    #   review = [movie_link.text, name]
  #end
#end