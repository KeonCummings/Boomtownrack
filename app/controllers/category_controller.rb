class CategoryController < ApplicationController

	def pants
		@pants = Product.where(category: 'pants')
	end		

	def sweaters
		@sweaters = Product.where(category: 'sweaters')
	end

	def dresses
		@dresses = Product.where(category: 'dresses')
	end

	def accessories
		@accessories = Product.where(category: 'accessories')
	end

	def jewelry
		@jewelry = Product.where(category: 'jewelry')
	end
end
