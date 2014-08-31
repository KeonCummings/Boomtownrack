class ProductsController < ApplicationController
	def show
		@tops = Product.all
	end
end
