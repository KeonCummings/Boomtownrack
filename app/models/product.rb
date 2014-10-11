class Product < ActiveRecord::Base
  has_many :favorites, foreign_key: "product_id", dependent: :destroy
  has_many :users, through: :favorites

  def open_url
 		@url = params[:url]
 		binding.pry
	end
end
