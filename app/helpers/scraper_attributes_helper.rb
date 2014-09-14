require 'mechanize'
require 'nokogiri'

module ScraperAttributesHelper
	class Scraper
	    def initialize(url)
	     @node_set = Array.new
	     @attributes = Array.new
	     @agent = Mechanize.new
	     @page = @agent.get(url)
	   	end

	    def images(web_section)
	 		@node_set = @page.parser.css(web_section).collect { |image| image.attribute('src').text }
	    	@node_set.each { |put| @attributes << put }
	    end

	    def product_url(web_section)
	 		@node_set = @page.parser.css(web_section).collect { |url| url['href'] }
	    	@node_set.each { |put| @attributes << put }
	    end

	    def brands(web_section)
	    	@node_set = @page.parser.css(web_section).collect {|brand| brand.text}
	    	@node_set.each { |put| @attributes << put }
	    end

   	  	def description(web_section)
    		@node_set = @page.parser.css(web_section).collect {|description| description.text}
    		@node_set.each { |put| @attributes << put }
    	end

		def prices(web_section)
			@node_set = @page.parser.css(web_section).collect {|prices| prices.text}
			@node_set.each { |put| @attributes << put }
    	end

	    def deliver
	    	return @attributes
	    end

	    def reset
	    	@attributes = []
		end
	end
end

