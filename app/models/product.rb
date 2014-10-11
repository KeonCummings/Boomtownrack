class Product < ActiveRecord::Base
  has_many :favorites, foreign_key: "product_id", dependent: :destroy
  has_many :users, through: :favorites
end
