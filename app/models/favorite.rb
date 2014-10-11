class Favorite < ActiveRecord::Base
	belongs_to :product, class_name: "Product"
	belongs_to :user, class_name: "User"
	validates :product_id, presence: true
    validates :user_id, presence: true
end
