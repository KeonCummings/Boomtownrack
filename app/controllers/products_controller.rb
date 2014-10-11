class ProductsController < ApplicationController

	def open_url
 		@url = params[:url]
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	
end
