class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def open_url
 		@url = Product.find(params[:url])
	end

	def show
		@product = Product.find(params[:id])
		@url = Product.find(params[:id])
	end
	
end
