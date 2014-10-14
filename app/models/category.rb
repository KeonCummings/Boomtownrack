class Category < ActiveRecord::Base
	has_many :product_categories, foreign_key: "category_id"
	has_one :product, through: :product_categories

end
