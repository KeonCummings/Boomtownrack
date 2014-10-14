class Product < ActiveRecord::Base
  has_many :favorites, foreign_key: "product_id", dependent: :destroy
  has_many :users, through: :favorites
  has_many :product_categories, foreign_key: "product_id"
  has_one :category, through: :product_categories
end
