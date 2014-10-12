class ProductsController < ApplicationController

	def index
		@products = Product.all
		@signed_in = current_user
	end

	def open_url
 		@url = Product.find(params[:url])
	end

	def show
		@product = Product.find(params[:id])
		@url = Product.find(params[:id])
		@signed_in = current_user
	end
	
end
