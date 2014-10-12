class ProductsController < ApplicationController

	def index
		@products = Product.paginate(page: params[:page], per_page: 12)
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
